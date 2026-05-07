<#
.SYNOPSIS
    Summarizes recent user activity from Windows Security Logs.

.DESCRIPTION
    Extracts:
    - Successful logons (4624)
    - Failed logons (4625)
    - Account lockouts (4740)
    - Password changes (4723, 4724)
    - Privilege changes (4670, 4672)

.OUTPUTS
    Displays a structured summary of user activity.
#>

Write-Host "`n=== User Activity Review ===`n" -ForegroundColor Cyan

$eventIds = 4624, 4625, 4740, 4723, 4724, 4670, 4672

$events = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id      = $eventIds
} -ErrorAction SilentlyContinue

if (-not $events) {
    Write-Host "No relevant events found or insufficient permissions." -ForegroundColor Yellow
    exit
}

$parsed = foreach ($event in $events) {
    $xml = [xml]$event.ToXml()
    $data = $xml.Event.EventData.Data

    [PSCustomObject]@{
        TimeCreated = $event.TimeCreated
        EventID     = $event.Id
        Account     = $data[5].'#text'
        Details     = $data[0].'#text'
    }
}

Write-Host "User Activity Summary:`n" -ForegroundColor Green
$parsed | Sort-Object TimeCreated -Descending | Format-Table -AutoSize
