# ActiveDirectoryTroubleshooting.ps1

# Check User Account Status

# Script to check if a user account is locked or disabled in Active Directory

$username = Read-Host "Enter the username"
$user = Get-ADUser $username -Properties LockedOut, Enabled
if ($user.LockedOut) {
    Write-Host "Account is locked."
}
else {
    Write-Host "Account is not locked."
}
if ($user.Enabled -eq $false) {
    Write-Host "Account is disabled."
}
else {
    Write-Host "Account is active."
}
