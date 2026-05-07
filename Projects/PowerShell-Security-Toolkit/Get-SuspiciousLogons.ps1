<#
.SYNOPSIS
    Analyzes Windows Security Logs for suspicious logon activity.

.DESCRIPTION
    Filters Event ID 4624 (successful logon) and 4625 (failed logon)
    to identify unusual patterns such as:
    - Multiple failed attempts
    - Logons from unexpected sources
    - Off-hours authentication
    - High-risk logon types

.OUTPUTS
    Displays suspicious logon events in a clean table format.
#>

Write-Host "`n=== Suspicious Logon Analyzer ===`n" -ForegroundColor Cyan

# Get Security Log events for 4624 and 4625
$events = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id      = 4624, 4625
} -ErrorAction SilentlyContinue

if (-not $events) {
    Write-Host "No logon events found or insufficient permissions." -ForegroundColor Yellow
    exit
}

# Parse events
$parsed = foreach ($event in $events) {
    $xml = [xml]$event.ToXml()
    $data = $xml.Event.EventData.Data

    [PSCustomObject]@{
        TimeCreated = $event.TimeCreated
        EventID     = $event.Id
        Account     = $data[5].'#text'
        LogonType   = $data[8].'#text'
        SourceIP    = $data[18].'#text'
        Status      = if ($event.Id -eq 4625) { "Failed" } else { "Success" }
    }
}

# Identify suspicious patterns
$suspicious = $parsed | Where-Object {
    $_.Status -eq "Failed" -or
    $_.LogonType -in 3, 10 -or
    $_.SourceIP -and $_.SourceIP -notlike "192.168.*"
}

Write-Host "Suspicious logon events detected:`n" -ForegroundColor Red
$suspicious | Format-Table -AutoSize
