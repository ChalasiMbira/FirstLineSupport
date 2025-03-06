# CheckDiskSpace.ps1
# Script to check disk space and report the status
$drives = Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3"
foreach ($drive in $drives) {
    $freeSpaceGB = [math]::round($drive.FreeSpace / 1GB, 2)
    $totalSpaceGB = [math]::round($drive.Size / 1GB, 2)
    $usedSpaceGB = $totalSpaceGB - $freeSpaceGB
    Write-Host "Drive $($drive.DeviceID): $usedSpaceGB GB used out of $totalSpaceGB GB"
}
