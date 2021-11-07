/*ЗАДАНИЕ 6.
Измените запрос, который строит рейтинг продаж по брендам:
select b.brand_name,count(*) as q_sell,sum(s.price) as tot_grn
from purchases s left join phones p on s.phone_id=p.phone_id left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019 and month(date_purch) between 10 and 12
group by b.brand_name
order by count(*) desc
так, что бы он строил рейтинг продаж по наименованиям телефонов, не зависимо от брендов*/

select p.phone_name,count(*) as q_sell,sum(s.price) as tot_grn
from purchases s left join phones p on s.phone_id=p.phone_id 
where year(s.date_purch)=2019 and month(date_purch) between 10 and 12
group by p.phone_name
order by count(*) desc