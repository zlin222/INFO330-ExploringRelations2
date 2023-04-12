-- Show the sales agent's full name and invoices associated with each sales agent.
select em.FirstName, em.LastName, inv.InvoiceId 
from employees em, customers cu, invoices inv where 
em.EmployeeId = cu.SupportRepId and cu.CustomerId = inv.CustomerId;