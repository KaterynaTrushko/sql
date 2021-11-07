/*ЗАДАНИЕ 7.
В запросе из задачи 6 умножте два последних добавленных столбца на 1. Как изменился порядок сортировки?*/

select os
,CHARINDEX('.',os) as symbol
,CHARINDEX('v',os) as symbol_V
,1*SUBSTRING(os,CHARINDEX('v',os)+1,CHARINDEX('.',os) - CHARINDEX('v',os)-1) as risalt
,1*SUBSTRING(os,CHARINDEX('.',os)+1,1) as task_5
from phones 
where os LIKE ('android v%')
order by risalt,task_5  --значения приобразовались с строчных в числовые и порядок сортировки изменился соответственно