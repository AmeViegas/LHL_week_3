Instead of just their ISBN number, fetch their Book Title as well. You should still have the same 3 results but with more information. But instead of just one column, we should have 2 columns in the result set.

select statement: 
select isbn, title from publishers a, editions b, books c where a.name = 'Random House'
and a.id = b.publisher_id
and b.book_id = c.id

output: 
isbn        title
039480001X  The Cat in the Hat
394800753   Bartholomew and the Oobleck
394900014   The Cat in the Hat