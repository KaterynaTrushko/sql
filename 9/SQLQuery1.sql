/*ЗАДАНИЕ 1.
Напишите SQL-запрос, который выводит столбцы brand_name, brand_id , color_name и color_id из таблиц brands и
colors связанных неявно (CROSS JOIN) . Вывести только те строки где значение столбца reg_country (страна
регистрации бренда) равен 'Украина’*/

select 
 b.brand_id
 ,b.brand_name
 ,c.color_id
 ,c.color_name
from brands b  cross join colors c
where reg_country in ('Украина')


