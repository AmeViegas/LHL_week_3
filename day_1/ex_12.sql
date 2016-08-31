List books that have both paperback and hardcover editions. That means at least one edition of the book in both formats.

The result contains four books:

The Shining
Dune
2001: A Space Odyssey
The Cat in the Hat

SQL statement: 
select title 
from editions a, editions b, books c
where a.type = 'h'
and b.type = 'p'
and a.book_id = b.book_id
and a.book_id = c.id

Output: 
Title
"The Shining"
"The Cat in the Hat"
"Dune"
"2001: A Space Odyssey"
