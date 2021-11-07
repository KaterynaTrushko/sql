/*ЗАДАНИЕ 5.
Напишите SQL-запрос, который выводит все строки столбца price таблицы phone_price. Установите связь с другими
таблицами что бы вывести столбцы с названием торговца (merchant_name), названием бренда (brand_name) и
названием телефона (phone_name) . Строки отсортировать по столбцам merchant_name, brand_name и phone_name*/

select 
 ph.brand_id
,b.brand_name
,ph.phone_name
,pr.price
,m.merchant_name
from phone_price pr 
left join merchants m on m.merchant_id=pr.merchant_id
left join phones ph on ph.phone_id=pr.phone_id 
left join brands b on b.brand_id=ph.brand_id
order by merchant_name, brand_name, phone_name

