# NetworkTroubleshooting.ps1

# Script to check network connection status and ping a known website

$pingResult = Test-Connection google.com -Count 4 -Quiet
if ($pingResult) {
    Write-Host "Network is working correctly. Internet connection is up."
} else {
    Write-Host "Network issue detected. Cannot reach the internet."
}
