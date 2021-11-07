/*ЗАДАНИЕ 6.
В запрос из задачи 5 добавьте сортировку по двум последним добавленным столбцам*/

select os
,CHARINDEX('.',os) as symbol
,CHARINDEX('v',os) as symbol_V
,SUBSTRING(os,CHARINDEX('v',os)+1,CHARINDEX('.',os) - CHARINDEX('v',os)-1) as risalt
,SUBSTRING(os,CHARINDEX('.',os)+1,1) as task_5
from phones 
where os LIKE ('android v%')
order by risalt,task_5