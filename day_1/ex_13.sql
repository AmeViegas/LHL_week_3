For each publisher, list their average book sale price, number of editions published.
*note: not quite sure if # of editions published was on highest # of editions for everything published. Or per book. Opted for highest.

query: 
select distinct on (a.publisher_id ) 
publisher_id,
b.name as "Publisher Name",
cast(avg(c.retail) as money) as "Average Retail",
edition from editions a
join publishers b on b.id = a.publisher_id
join stock c on a.isbn = c.isbn
where b.id = a.publisher_id
group by a.publisher_id,b.name, edition
order by a.publisher_id, edition desc

output: 
publisher id  Publisher Name              Average Retail  edition
59            Random House                $24.62          1
62            Watson-Guptill Publications $28.95          1
65            HarperCollins               $28.95          1
75            Doubleday                   $36.95          2
91            Henry Holt & Company, Inc.  $23.95          1
99            Ace Books                   $45.95          3
101           Roc                         $34.95          3
102           Penguin                     $24.95          1
150           Kids Can Press              $23.95          1
163           Mojo Press                  $24.95          1
171           Books of Wonder             $21.95          2


