﻿/*ЗАДАНИЕ 4.
Напишите SQL-запрос, который выводит все столбцы из таблицы phones по тем phone_id, у которых в таблице
phone_comment значение столбца enthusiastic>100. Используйте конструкцию where exists (подзапрос)*/


select *
from phones
where exists
(select phone_id 
from phone_comment
where enthusiastic>100)