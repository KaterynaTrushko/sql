/*ЗАДАНИЕ 8.
Напишите SQL-запрос, который группирует строки таблицы clients по первой букве столбца client_name. (Группировку
необходимо делать по вычисляемому с помощью функции столбцу). Добавте сортировку строк полученного запроса*/

/*select client_name
,CHARINDEX(' ',client_name) as num
,SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,1)  as letter
from clients
order by letter 
group by SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,1)*/

select /*client_name
,CHARINDEX(' ',client_name) as num
,*/SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,1) as letter
from clients
group by SUBSTRING(client_name,CHARINDEX(' ',client_name)+1,1)
order by letter