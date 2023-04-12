-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
select tr.TrackId, tr.Name, tr.Composer from tracks tr
left outer join invoice_items ite on tr.TrackId = ite.TrackId 
where ite.TrackId is Null group by tr.TrackId;