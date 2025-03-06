# SoftwareInstallationAndLicensing.ps1

# Software Installation and Licensing

# Script to install a software package (e.g., Chrome)
$installer = "C:\path\to\chrome_installer.exe"
Start-Process $installer -ArgumentList "/silent" -Wait
Write-Host "Software installed successfully."
