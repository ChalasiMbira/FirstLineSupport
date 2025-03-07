$firewallStatus = Get-NetFirewallProfile | Select-Object Name, Enabled
Write-Host "Firewall Status: $firewallStatus"
