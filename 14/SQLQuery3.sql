/*ЗАДАНИЕ 3.
Измените запрос, который производит расчёт равномерности спроса:
select a.brand_name,a.m01,a.m02,a.m03,a.m04,a.m05,a.m06,a.total_avg
,sqrt((square(m01-total_avg)+square(m02-total_avg)+square(m03-total_avg)+square(m04-total_avg)+square(m05-total_avg)+square(m06-total_avg))/6)/total_avg as k_xyz
,case
when sqrt((square(m01-total_avg)+square(m02-total_avg)+square(m03-total_avg)+square(m04-total_avg)+square(m05-total_avg)+square(m06-total_avg))/6)/total_avg<=0.1 then 'X'
when sqrt((square(m01-total_avg)+square(m02-total_avg)+square(m03-total_avg)+square(m04-total_avg)+square(m05-total_avg)+square(m06-total_avg))/6)/total_avg<=0.25 then 'Y'
else 'Z' end as kat
from (
select b.brand_name
,sum(case when month(date_purch)=1 then 1 else 0 end) as m01
,sum(case when month(date_purch)=2 then 1 else 0 end) as m02
,sum(case when month(date_purch)=3 then 1 else 0 end) as m03
,sum(case when month(date_purch)=4 then 1 else 0 end) as m04
,sum(case when month(date_purch)=5 then 1 else 0 end) as m05
,sum(case when month(date_purch)=6 then 1 else 0 end) as m06
,count(*)/6 as total_avg
from purchases s left join phones p on s.phone_id=p.phone_id left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 6
group by b.brand_name
having count(*)/6<>0
) a
order by kat
так чтобы он проводил расчёт равномерности спроса по наименованиям телефонов относящихся к бренду SAMSUNG*/

select a.phone_name,a.m01,a.m02,a.m03,a.m04,a.m05,a.m06,a.total_avg
,sqrt((square(m01-total_avg)+square(m02-total_avg)+square(m03-total_avg)+square(m04-total_avg)+square(m05-total_avg)+square(m06-total_avg))/6)/total_avg as k_xyz
,case
when sqrt((square(m01-total_avg)+square(m02-total_avg)+square(m03-total_avg)+square(m04-total_avg)+square(m05-total_avg)+square(m06-total_avg))/6)/total_avg<=0.1 then 'X'
when sqrt((square(m01-total_avg)+square(m02-total_avg)+square(m03-total_avg)+square(m04-total_avg)+square(m05-total_avg)+square(m06-total_avg))/6)/total_avg<=0.25 then 'Y'
else 'Z' end as kat
from (
select p.phone_name
,sum(case when month(date_purch)=1 then 1 else 0 end) as m01
,sum(case when month(date_purch)=2 then 1 else 0 end) as m02
,sum(case when month(date_purch)=3 then 1 else 0 end) as m03
,sum(case when month(date_purch)=4 then 1 else 0 end) as m04
,sum(case when month(date_purch)=5 then 1 else 0 end) as m05
,sum(case when month(date_purch)=6 then 1 else 0 end) as m06
,count(*)/6 as total_avg
from purchases s left join phones p on s.phone_id=p.phone_id left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 6 and b.Brand_name in ('Samsung') 
group by p.phone_name
having count(*)/6<>0
) a
order by kat

