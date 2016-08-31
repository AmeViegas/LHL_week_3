Fetch ISBN of all book editions published by the publisher "Random House". You should have 3 results.

select statement: 
select isbn from publishers a, editions b where a.name = 'Random House'
and a.id = b.publisher_id

output: 
isbn
"039480001X"
"0394800753"
"0394900014"
Raw