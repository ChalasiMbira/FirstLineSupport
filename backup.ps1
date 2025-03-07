$source = "C:\Users\YourUser\Documents"
$backupDestination = "D:\Backup"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$backupFolder = "$backupDestination\Backup-$timestamp"

# Create backup folder
New-Item -Path $backupFolder -ItemType Directory

# Copy files
Copy-Item -Path $source -Destination $backupFolder -Recurse -Force

Write-Host "Backup completed at $timestamp"
