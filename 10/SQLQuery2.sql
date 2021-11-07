/*ЗАДАНИЕ 2.
Используя функцию charindex() добавьте в запрос из задачи 1 столбец с номером позиции символа «.» в os*/

select os
,CHARINDEX('.',os) as symbol
from phones 
where os LIKE ('android v%');