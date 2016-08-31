Hardcover vs Paperback

Editions has a column called "type". Include the print type but instead of just displaying "h" or "p" (the values in the column) output the human readable types ("hardcover" and "paperback" accordingly)

sql statement
select b.isbn as "ISBN", title, cast((d.cost) as money), 
cast(retail as money), stock, 
case 
when type = 'h' then 'hardcover'
when type = 'p' then 'paperback'
else 'not sure'
end
from publishers a, editions b, books c, stock d
where a.name = 'Random House'
and a.id = b.publisher_id
and b.book_id = c.id
and b.isbn = d.isbn
and stock > 0

output: 
ISBN        title                       cost    retail  stock case
039480001X  The Cat in the Hat          $30.00  $32.95  31    hardcover
394800753   Bartholomew and the Oobleck $16.00  $16.95  4     paperback