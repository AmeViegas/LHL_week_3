What is the overall average cost and retail price for all books for sale? Return three columns "Average cost", "Average Retail" and "Average Profit"

sql statement: 
select cast(avg(cost) as money) as "Average Cost", 
cast(avg(retail) as money) as "Average Retail",
cast((avg(retail) - avg(cost)) as money) as "Average Profit"
from stock

output: 
Average Cost  Average Retail  Average Profit
$23.88        $28.45          $4.58