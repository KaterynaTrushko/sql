/*ЗАДАНИЕ 7.
Напишите SQL-запрос без оператора FROM, который вернет одну строку с датой равной первому дню текущего месяца.
Использовать функции GETDATE(), DATEADD(),DATEDIFF(). Создайте второй столбец, в котором преобразуйте выражение
из первого столбца так, чтобы оно вернуло первый день следующего месяца*/select getdate(),DATEFROMPARTS(YEAR(getdate()),MONTH(getdate()),1) as First, DATEADD( mm,1,DATEFROMPARTS(YEAR(getdate()),MONTH(getdate()),1)) as next