/*ЗАДАНИЕ 5.
Используя функцию substring() добавьте в запрос из задачи 4 столбец c подстрокой из столбца os которая начинается
с номера позиции символа «.» плюс 1 длиной 1 символ. Дайте название столбцу*/

select os
,CHARINDEX('.',os) as symbol
,CHARINDEX('v',os) as symbol_V
,SUBSTRING(os,CHARINDEX('v',os)+1,CHARINDEX('.',os) - CHARINDEX('v',os)-1) as risalt
,SUBSTRING(os,CHARINDEX('.',os)+1,1) as task_5
from phones 
where os LIKE ('android v%')