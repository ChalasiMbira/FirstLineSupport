# EventLogsTroubleshooting.ps1

# Check Event Logs for Errors

# Script to check system event logs for critical errors

$logName = "System"
$eventLogs = Get-WinEvent -LogName $logName | Where-Object { $_.LevelDisplayName -eq "Error" }
if ($eventLogs) {
    $eventLogs | ForEach-Object {
        Write-Host "Event ID: $($_.Id) - Message: $($_.Message)"
    }
} else {
    Write-Host "No critical errors found in the system log."
}
