# PrinterIssues.ps1

# Check Printer Status

# Script to check the status of all printers
$printers = Get-WmiObject -Class Win32_Printer
foreach ($printer in $printers) {
    Write-Host "Printer: $($printer.Name) - Status: $($printer.PrinterStatus)"
}
