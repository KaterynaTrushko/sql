/*ЗАДАНИЕ 1.
Напишите SQL-запрос, который неявно связывает таблицы brands и colors. Выберите только те строки, в которых
brand_id=1*/

select * 
from brands,colors
where brand_id=1