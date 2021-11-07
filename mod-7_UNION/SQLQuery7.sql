/*ЗАДАНИЕ 6.
ЗАДАНИЕ 7.
Напишите два SQL-запроса:
1. Выбирает phone_id, color_id из таблицы phone_price для merchant_id =1
2. Выбирает phone_id, color_id из таблицы phone_price для merchant_id =8
Найдите строки, которые есть в результатах одного запроса, но нет в результатах другого с помощью except*/

select phone_id,color_id
from phone_price
where merchant_id =1
except
select phone_id,color_id
from phone_price
where merchant_id =8 

select phone_id,color_id
from phone_price
where merchant_id =8
except
select phone_id,color_id
from phone_price
where merchant_id =1