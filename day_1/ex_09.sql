Which book ID has the most pieces in stock?

Hints:

Use an aggregate function combined with LIMIT and ORDER BY clauses.
No need to join with the books table since we just want the ID which is already in the editions table.

sql statement: 
select book_id from editions a, stock b
 where a.isbn = b.isbn
order by stock desc
limit 1

output: 
book_id
4513