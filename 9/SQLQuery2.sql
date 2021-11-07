/*ЗАДАНИЕ 2.
Напишите SQL-запрос, который выводит все строки и все столбцы из таблицы phone_price и столбец brand_id из
таблицы phones. Связать таблицы так, что бы гарантированно получить все строки из таблицы phone_price*/

select 
 pr.phone_id
,pr.price
,pr.merchant_id
,pr.color_id
,ph.brand_id
from phone_price pr
,phones ph





