List author ID along with the full name and the number of books they have written. Output 3 columns: "ID", "Full name" and "Number of Books"

sql statement: 
select a.id as "ID", (a.last_name || ',' || a.first_name) as "Full Name", 
count(b.title) as "Number of Books" from 
authors a, books b
where a.id = b.author_id
group by a.id

output: 
ID      Full Name                 Number of Books
1866    Herbert,Frank             1
1644    Hogarth,Burne             1
115     Poe,Edgar Allen           1
4156    King,Stephen              1
2001    Clarke,Arthur C.          1
1212    Worsley,John              1
7806    Christiansen,Tom          1
25041   Bianco,Margery Williams   1
2031    Brown,Margaret Wise       1
7805    Lutz,Mark                 2
15990   Bourgeois,Paulette        1
16      Alcott,Louisa May         1