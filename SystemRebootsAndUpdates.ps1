# SystemRebootsAndUpdates.ps1

# Check for Pending Updates

# Script to check if there are pending Windows updates

$updates = Get-WindowsUpdate -IsPending
if ($updates) {
    Write-Host "There are pending updates."
} else {
    Write-Host "No pending updates."
}
