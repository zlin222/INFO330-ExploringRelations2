-- What was the most purchased track of 2013?
select tracks.Name, sum(invoice_items.Quantity)
from tracks
	JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
	JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceID
WHERE invoices.InvoiceDate like '%2013%'
group by tracks.Name order by sum(invoice_items.Quantity) desc
limit 1;