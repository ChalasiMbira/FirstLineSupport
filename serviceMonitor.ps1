$services = @("DNS", "DHCP", "w3svc")  # Replace with the relevant service names

foreach ($service in $services) {
    $serviceStatus = Get-Service -Name $service
    Write-Host "$service status: $($serviceStatus.Status)"

    # Restart the service if it's not running
    if ($serviceStatus.Status -eq "Stopped") {
        Write-Host "Restarting $service..."
        Restart-Service -Name $service
    }
}
