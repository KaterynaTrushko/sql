/*ЗАДАНИЕ 3.
Напишите SQL-запрос, который связывает запрос из задачи 1 и запрос из задачи 2 по столбцам brand_id и color_id так
чтобы гарантированно получить все строки из запроса с названиями брендов и цветов*/

select
a.brand_id
 ,a.brand_name
 ,a.color_id
 ,a.color_name
 ,k.phone_id
 ,k.price
 ,k.merchant_id
 from
(select 
 b.brand_id
 ,b.brand_name
 ,c.color_id
 ,c.color_name
from brands b cross join colors c
where reg_country in ('Украина')) a
full join
(select 
 pr.phone_id
,pr.price
,pr.merchant_id
,pr.color_id
,ph.brand_id
from phone_price pr
,phones ph) k
on a.brand_id=k.brand_id and a.color_id=k.color_id