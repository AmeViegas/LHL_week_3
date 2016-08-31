Also include their stock information (available stock and retail price for each book edition). You should still have the same 3 results but with more information. But instead of just 2 columns, we should have 4 columns in the result set.

sql statement: 
select b.isbn as "ISBN", title, cast((d.cost) as money), cast(retail as money), stock 
from publishers a, editions b, books c, stock d
where a.name = 'Random House'
and a.id = b.publisher_id
and b.book_id = c.id
and b.isbn = d.isbn

output: 
ISBN        title                       cost    retail  stock
039480001X  The Cat in the Hat          $30.00  $32.95  31
394800753   Bartholomew and the Oobleck $16.00  $16.95  4
394900014   The Cat in the Hat          $23.00  $23.95  0