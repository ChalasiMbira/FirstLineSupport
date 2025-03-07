Copy-Item -Path "C:\Users\Public\Documents\*.*" -Destination "\\NetworkShare\Backup" -Recurse
Write-Host "Files have been backed up."
