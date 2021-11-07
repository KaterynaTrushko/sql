/*ЗАДАНИЕ 4.
Используя функцию substring() добавьте в запрос из задачи 3 столбец c подстрокой из столбца os которая начинается
с номера позиции символа «v» плюс 1 и имеет длину: номер позиции символа «.» минус номер позиции символа
«v» минус 1. Дайте название столбцу*/select os
,CHARINDEX('.',os) as symbol
,CHARINDEX('v',os) as symbol_V
,SUBSTRING(os,CHARINDEX('v',os)+1,CHARINDEX('.',os) - CHARINDEX('v',os)-1) as risalt
from phones 
where os LIKE ('android v%');