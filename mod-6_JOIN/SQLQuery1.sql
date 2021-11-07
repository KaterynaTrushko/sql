/*ЗАДАНИЕ 2.
Напишите SQL-запрос, который связывает таблицы phones и phone_comment. Запрос должен выводить все строки из
таблицы phones и только те строки из таблицы phone_comment, для которых phones.phone_id равен
phone_comment.phone_id. Использовать оператор LEFT JOIN*/select *from phones left join phone_comment on phones.phone_id=phone_comment.phone_id