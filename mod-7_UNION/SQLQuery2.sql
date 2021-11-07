/*ЗАДАНИЕ 2.
Напишите SQL-запрос, который неявно связывает таблицы brands и colors. Выберите только те строки, в которых
color_id=1  */

select * 
from brands,colors 
where color_id=1