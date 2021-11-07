/*ЗАДАНИЕ 7.
В SQL-запрос из задачи 6 добавьте новый столбец с номером каждой строки. Нумерация должна вестись для каждого
торговца отдельно. Порядок нумерации строк должен быть задан по столбцам merchant_name, brand_name и
phone_name*/

select
ROW_NUMBER () over( order by a.merchant_name,brand_name,phone_name) as N_n,ROW_NUMBER () over( partition by a.merchant_name order by a.merchant_name,brand_name,phone_name) as N_m,*from(select 
 ph.brand_id
,b.brand_name
,ph.phone_name
,pr.price
,m.merchant_name
from phone_price pr 
left join merchants m on m.merchant_id=pr.merchant_id
left join phones ph on ph.phone_id=pr.phone_id 
left join brands b on b.brand_id=ph.brand_id ) a