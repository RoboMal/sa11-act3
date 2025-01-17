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
  invoice_data.each_line do |invoice|
    match_data = invoice.match(/(\d{4}-\d{2}-\d{2}) - ([\w\d]+) - ([\w\s]+) - (\$\d+(\.\d+)?)/)
    puts "Date: #{match_data[1]}, Invoice Number: #{match_data[2]}, Client: #{match_data[3]}, Amount: #{match_data[4]}"
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)

'''
RESULT(S):
Date: 2023-03-01, Invoice Number: INV001, Client: Acme Corp, Amount: $1000
Date: 2023-03-02, Invoice Number: INV002, Client: Beta LLC, Amount: $2050
Date: 2023-03-03, Invoice Number: INV003, Client: Gamma Inc, Amount: $3500
'''
