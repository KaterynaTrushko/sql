/*ЗАДАНИЕ 9.
Напишите SQL-запрос, который выбирает из таблицы clients строки, где первые 5 символов столбца client_name
читаются одинаково с права на лево. Использовать функцию REVERSE()*/



 select 
 top (5)
 client_name
,CHARINDEX(' ',client_name) as num
,SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,5) as n_5
,REVERSE(SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,5)) as rev
from clients
where SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,5) = REVERSE(SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,5)) 
and SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,5) != ' '
 