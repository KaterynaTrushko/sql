/*ЗАДАНИЕ 7.
Напишите SQL-запрос без оператора FROM, который вернет одну строку с результатом функции GETDATE(). Создайте
новые столбцы в которых с помощью функции CONVERT() преобразуйте результат возвращаемый функцией GETDATE()
в следующие типы данных: smalldatetime,date,time,datetime2,datetimeoffset*/selectGETDATE() as col1,CONVERT(smalldatetime,GETDATE()) as co2,CONVERT(date,GETDATE()) as co3,CONVERT(time,GETDATE()) as co4,CONVERT(datetime2,GETDATE()) as co5,CONVERT(datetimeoffset,GETDATE()) as co6