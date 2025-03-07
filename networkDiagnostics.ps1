$server = "google.com"

# Ping Test
$pingResult = Test-Connection -ComputerName $server -Count 4
Write-Host "Ping Test Results:"
$pingResult | Format-Table

# Tracert Test
Write-Host "Traceroute Test Results:"
tracert $server

# Nslookup Test
Write-Host "DNS Lookup Results:"
nslookup $server
