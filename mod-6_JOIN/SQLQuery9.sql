/*ЗАДАНИЕ 9.
Напишите SQL-запрос, который выводит столбец price из таблицы phone_price для merchant_id=1. Используйте этот
запрос в качестве подзапроса в операторе where price>=all(подзапрос) другого запроса, который выводит все
столбцы из таблицы phone_price для merchant_id=1*/

select * from phone_price where merchant_id=1 and
price>=all(select price from phone_price where merchant_id=1)