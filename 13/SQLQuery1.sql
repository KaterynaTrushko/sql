/*ЗАДАНИЕ 1.
Напишите SQL-запрос, который выбирает из таблицы phone столбец phone_name. Задайте условие отбора строк, которое выведет
только те строки, у которых первый символ в столбце phone_name является цифрой. Использовать функцию ISNUMERIC()*/

select phone_name
--,SUBSTRING(phone_name,1,1)
from phones
where ISNUMERIC(SUBSTRING(phone_name,1,1))=1