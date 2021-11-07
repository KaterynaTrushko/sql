/*ЗАДАНИЕ 1.
Напишите SQL-запрос, который выбирает из таблицы phones столбец os. Используя операцию сравнения like
отобрать только те строки, которые начинаются с «android v»*/

select os
from phones 
where os LIKE ('android v%');
