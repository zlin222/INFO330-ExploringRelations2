-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
select customers.FirstName, customers.LastName, invoices.InvoiceId, 
invoices.InvoiceDate, invoices.BillingCountry from customers, 
invoices where invoices.BillingCountry = 'Brazil';
