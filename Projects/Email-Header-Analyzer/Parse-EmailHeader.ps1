<#
.SYNOPSIS
    Extracts key metadata from a raw email header.

.DESCRIPTION
    Parses common fields used in phishing investigations:
    - Return-Path
    - From
    - Received chain
    - SPF/DKIM/DMARC results
    - Source IP
    - Sending domain

.NOTES
    This script is read-only and safe to run.
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$HeaderFile
)

if (-not (Test-Path $HeaderFile)) {
    Write-Host "Header file not found." -ForegroundColor Red
    exit
}

$header = Get-Content $HeaderFile -Raw

Write-Host "`n=== Email Header Analysis ===`n" -ForegroundColor Cyan

# Extract fields
$returnPath = ($header | Select-String -Pattern "^Return-Path:").Line
$from       = ($header | Select-String -Pattern "^From:").Line
$received   = ($header | Select-String -Pattern "^Received:").Line
$spf        = ($header | Select-String -Pattern "spf=").Line
$dkim       = ($header | Select-String -Pattern "dkim=").Line
$dmarc      = ($header | Select-String -Pattern "dmarc=").Line

# Extract source IP from Received chain
$sourceIP = ($received -match "

\[([0-9]{1,3}\.){3}[0-9]{1,3}\]

") | Out-Null
$ip = $Matches[0]

# Output
[PSCustomObject]@{
    ReturnPath = $returnPath
    From       = $from
    SourceIP   = $ip
    SPF        = $spf
    DKIM       = $dkim
    DMARC      = $dmarc
}
