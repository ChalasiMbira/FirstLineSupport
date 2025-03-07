$antivirus = Get-WmiObject -Namespace "Root\SecurityCenter2" -Class AntiVirusProduct

if ($antivirus) {
    Write-Host "Antivirus is installed."
    Write-Host "Antivirus Name: $($antivirus.displayName)"
} else {
    Write-Host "No antivirus detected. Installing antivirus..."
    # Trigger antivirus installation (replace with actual installation command)
    # Example: Start-Process -FilePath "C:\path\to\antivirus-installer.exe"
}
