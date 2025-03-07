Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name, Status
