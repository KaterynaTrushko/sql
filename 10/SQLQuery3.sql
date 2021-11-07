/*ЗАДАНИЕ 3.
Используя функцию charindex() добавьте в запрос из задачи 2 столбец с номером позиции символа «v» в os*/

select os
,CHARINDEX('.',os) as symbol
,CHARINDEX('v',os) as symbol_V
from phones 
where os LIKE ('android v%');