--select count(phone_name) from m_phones
--select distinct brand_name from m_phones
/*select brand_name,memory,count(phone_name)as q_t
from m_phones
where brand_name not in ('appel','samsung') and memory is not null
group by brand_name,memory with rollup
--having count(phone_name)>10
order by q_t --brand_name,memory*/

select brand_name,phone_name,price
,count(phone_name) over() as общее_количество
,count(phone_name) over(partition by brand_name)
,max(price) over(partition by brand_name) as max_значение
,ROW_NUMBER() over (order by brand_name) as ROW_NUMBER
,ROW_NUMBER() over (partition by brand_name order by brand_name) 
from m_phones
where memory=256 and price is not null
order by brand_name,price