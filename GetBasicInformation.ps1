# GetBasicInformation.ps1

# Script to gather basic system information for troubleshooting

$computerName = $env:COMPUTERNAME
$osInfo = Get-WmiObject -Class Win32_OperatingSystem
$cpuInfo = Get-WmiObject -Class Win32_Processor
$memoryInfo = Get-WmiObject -Class Win32_PhysicalMemory

Write-Host "System Information for $computerName"
Write-Host "Operating System: $($osInfo.Caption) $($osInfo.Version)"
Write-Host "CPU: $($cpuInfo.Name)"
Write-Host "Memory: $([math]::round($memoryInfo.Capacity / 1GB, 2)) GB"
