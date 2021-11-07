/*ЗАДАНИЕ 3.
Напишите SQL-запрос, который связывает таблицы phones и phone_comment. Запрос должен выводить все строки из
таблицы phones и только те строки из таблицы phone_comment, для которых phones.phone_id равен
phone_comment.phone_id. Использовать оператор RIGHT JOIN*/select *from phone_comment right join phones on phones.phone_id=phone_comment.phone_id