# UserAccountManagement.ps1

# Reset User Password

# Script to reset user password in Active Directory

$username = Read-Host "Enter the username of the account"
$newPassword = Read-Host "Enter the new password" -AsSecureString
Set-ADAccountPassword -Identity $username -NewPassword $newPassword -Reset
Write-Host "Password reset successfully for $username."
