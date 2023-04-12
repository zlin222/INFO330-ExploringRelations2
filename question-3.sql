-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
select tracks.Name as 'tracks name', artists.Name as 'artists name', 
invoice_items.InvoiceLineId from tracks
join artists on artists.ArtistId = albums.ArtistId
join albums on albums.AlbumId = tracks.AlbumId 
join invoice_items on tracks.TrackId = invoice_items.TrackId 
order by tracks.Name;