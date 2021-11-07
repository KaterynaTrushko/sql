/*ЗАДАНИЕ 6.
Напишите два SQL-запроса:
1. Выбирает phone_id, color_id из таблицы phone_price для merchant_id =1
2. Выбирает phone_id, color_id из таблицы phone_price для merchant_id =8
Найдите строки, которые есть в результатах обоих запросов с помощью intersect*/

select phone_id,color_id
from phone_price
where merchant_id =1
intersect 
select phone_id,color_id
from phone_price
where merchant_id =8