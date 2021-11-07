/*ЗАДАНИЕ 8.
В SQL-запрос из задачи 7 добавьте новый столбец с номером каждой строки. Нумерация должна вестись отдельно для
каждого бренда внутри каждого торговца. Порядок нумерации строк должен быть задан по столбцам merchant_name,
brand_name и phone_name*/select
ROW_NUMBER () over( order by a.merchant_name,brand_name,phone_name) as N_n,ROW_NUMBER () over( partition by a.merchant_name order by a.merchant_name,brand_name,phone_name) as N_m,ROW_NUMBER () over( partition by a.brand_id,a.merchant_name order by a.merchant_name,brand_name,phone_name) as N_b,*from(select 
 ph.brand_id
,b.brand_name
,ph.phone_name
,pr.price
,m.merchant_name
from phone_price pr 
left join merchants m on m.merchant_id=pr.merchant_id
left join phones ph on ph.phone_id=pr.phone_id 
left join brands b on b.brand_id=ph.brand_id ) a