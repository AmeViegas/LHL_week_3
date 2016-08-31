Note how one of the of books has 0 stock. Modify the query to only return books that are in stock.

sql statment: 
select b.isbn as "ISBN", title, cast((d.cost) as money), cast(retail as money), stock 
from publishers a, editions b, books c, stock d
where a.name = 'Random House'
and a.id = b.publisher_id
and b.book_id = c.id
and b.isbn = d.isbn
and stock > 0

output: 
ISBN        title                       cost    retail  stock
039480001X  The Cat in the Hat          $30.00  $32.95  31
394800753   Bartholomew and the Oobleck $16.00  $16.95  4
