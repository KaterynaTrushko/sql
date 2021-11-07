/*ЗАДАНИЕ 4.
Напишите SQL-запрос, который связывает таблицы phones и phone_comment. Запрос должен выводить все строки из
обеих таблиц. Связь установите по столбцам phones.phone_id и phone_comment.phone_id*/select *from phone_comment full join phones on phones.phone_id=phone_comment.phone_id