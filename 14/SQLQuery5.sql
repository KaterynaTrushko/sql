/*ЗАДАНИЕ 5.
Измените запрос, который строит статистику продаж по торговцам:
select m.merchant_name,sum(s.price) as tot_pr
,sum(iif(month(s.date_purch)=1,s.price,0)) as m01
,sum(iif(month(s.date_purch)=2,s.price,0)) as m02
,sum(iif(month(s.date_purch)=3,s.price,0)) as m03
,sum(iif(month(s.date_purch)=4,s.price,0)) as m04
,sum(iif(month(s.date_purch)=5,s.price,0)) as m05
,sum(iif(month(s.date_purch)=6,s.price,0)) as m06
,sum(iif(month(s.date_purch)=7,s.price,0)) as m07
,sum(iif(month(s.date_purch)=8,s.price,0)) as m08
,sum(iif(month(s.date_purch)=9,s.price,0)) as m09
,sum(iif(month(s.date_purch)=10,s.price,0)) as m10
,sum(iif(month(s.date_purch)=11,s.price,0)) as m11
,sum(iif(month(s.date_purch)=12,s.price,0)) as m12
from purchases s left join merchants m on s.merchant_id=m.merchant_id
where year(s.date_purch)=2019
group by m.merchant_name
order by tot_pr desc
так чтобы он строил статистику продаж по каждому наименованию телефона бренда xiaomi*/select p.phone_name,sum(s.price) as tot_pr
,sum(iif(month(s.date_purch)=1,s.price,0)) as m01
,sum(iif(month(s.date_purch)=2,s.price,0)) as m02
,sum(iif(month(s.date_purch)=3,s.price,0)) as m03
,sum(iif(month(s.date_purch)=4,s.price,0)) as m04
,sum(iif(month(s.date_purch)=5,s.price,0)) as m05
,sum(iif(month(s.date_purch)=6,s.price,0)) as m06
,sum(iif(month(s.date_purch)=7,s.price,0)) as m07
,sum(iif(month(s.date_purch)=8,s.price,0)) as m08
,sum(iif(month(s.date_purch)=9,s.price,0)) as m09
,sum(iif(month(s.date_purch)=10,s.price,0)) as m10
,sum(iif(month(s.date_purch)=11,s.price,0)) as m11
,sum(iif(month(s.date_purch)=12,s.price,0)) as m12
from purchases s left join phones p on s.phone_id=p.phone_id 
left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019 and b.Brand_name in('Xiaomi')
group by p.phone_name
order by tot_pr desc
