# TicketManagement.ps1

# Open a Service Desk Ticket

# Script to create a new ticket in a ticketing system (sample)
$ticket = @{
    Subject = "Network Issue"
    Description = "User cannot access the internet."
    Priority = "High"
}
Write-Host "Ticket created: $($ticket.Subject)"
