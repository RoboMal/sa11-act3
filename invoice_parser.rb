'''
Name: Malcolm King
Class: COMP3081-001

GOALS:
•	Construct a Ruby script that processes a string with multiple lines, where each line represents an invoice entry formatted as [Date] - [Invoice Number] - [Client Name] - [Amount].
•	Extract the date, invoice number, client name, and amount from each line and display them in a structured format.
•	Utilize regular expressions to dissect each line of the invoice entries and capture the necessary components.
•	The date format is YYYY-MM-DD, invoice numbers are alphanumeric, client names may contain spaces and letters, and amounts are prefixed with a dollar sign.
'''

def parse_invoices(invoice_data)
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
