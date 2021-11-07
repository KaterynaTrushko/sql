/*ЗАДАНИЕ 4.
Напишите SQL-запрос, который выбирает все строки столбцов conn_type01, conn_type, conn_type2, conn_type3,
conn_type0 из таблицы . Используя функцию COALESCE() создайте вычисляемый столбец, в котором будет
выводится первое непуphonesстое значение из списка столбцов: conn_type01, conn_type, conn_type2, conn_type3. Если все
они пусты, вывести «Нет данных»*/select conn_type01,conn_type,conn_type2,conn_type3,conn_type0 ,COALESCE(conn_type01,conn_type,conn_type2,conn_type3,conn_type0,'Нет данных') as colfrom phones