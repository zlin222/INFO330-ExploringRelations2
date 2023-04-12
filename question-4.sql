-- Which sales agent made the most in sales in 2010?
select employees.FirstName ||' ' || employees.LastName as 'sales agent', 
sum(invoices.Total) from employees
join customers on employees.EmployeeId = customers.SupportRepId
join invoices on customers.CustomerId = invoices.CustomerId
where invoices.InvoiceDate like "2010%" group by employeeId limit 1;