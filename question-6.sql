-- Find tracks (id, name and composer) that are part of a line in an invoice.
select tr.TrackId, tr.Name, tr.Composer from tracks tr
join invoice_items ite on tr.TrackId = ite.TrackId group by tr.TrackId;