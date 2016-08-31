List all book titles along with their publication dates (column on the editions dates) That's 2 columns: "title" and "publication"

Important Notes:

Certain books (such as "Learning Python") don't have any editions but we still want to see those books in the results. They just shouldn't have a publication date associated with them.
Certain other books (such as "Dune") have multiple editions and they will be repeated multiple times in the result set.

sql statement: 
select  title, publication 
from books a left join editions b
on a.id = b.book_id 

output: 
title                       publication
The Cat in the Hat          03/01/57
The Shining                 08/01/81
Bartholomew and the Oobleck 03/01/49
Franklin in the Dark        03/01/87
Goodnight Moon              03/04/47
The Velveteen Rabbit        01/01/22
Little Women                01/01/68
The Cat in the Hat          01/01/57
The Shining                 10/01/93
The Tell-Tale Heart         03/28/95
The Tell-Tale Heart         12/01/98
Dune                        09/01/98
Dune                        10/01/99
2001: A Space Odyssey       09/12/00
2001: A Space Odyssey       10/01/99
Dynamic Anatomy             01/01/58
Programming Python          03/01/01