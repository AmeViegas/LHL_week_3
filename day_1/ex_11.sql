Order the result set above by number of books so that authors with most number of books appear atop the list (descending order).

sql statement: 
select a.id as "ID", (a.last_name || ',' || a.first_name) as "Full Name", 
count(b.title) as "Number of Books" from 
authors a, books b
where a.id = b.author_id
group by a.id
order by "Number of Books" desc

Output: 
ID      Full Name                 Number of Books
7805    Lutz,Mark                 2
1644    Hogarth,Burne             1
115     Poe,Edgar Allen           1
4156    King,Stephen              1
2001    Clarke,Arthur C.          1
1212    Worsley,John              1
7806    Christiansen,Tom          1
25041   Bianco,Margery Williams   1 
2031    Brown,Margaret Wise       1
15990   Bourgeois,Paulette        1
1866    Herbert,Frank             1
16      Alcott,Louisa May         1