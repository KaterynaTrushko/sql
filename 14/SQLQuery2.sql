/*ЗАДАНИЕ 2.
Измените запрос, который производит расчёты для АВС анализа по брендам:
select a.brand_name,a.total_b,a.total,a.dol,a.dol_ni
,case
when a.dol_ni<=0.8 then 'A’
when a.dol_ni>0.8 and a.dol_ni<=0.95 then 'B’
when a.dol_ni>0.95 then 'C’
else '*' end as kat
from (
select a.brand_name,a.total_b,c.total
,a.total_b/c.total as dol
,sum(a.total_b/c.total) over(order by a.total_b/c.total desc) as dol_ni
from (
select b.brand_name
,sum(s.price) as total_b
from purchases s left join phones p on s.phone_id=p.phone_id left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 3
group by b.brand_name
) a
,(select sum(price) as total from purchases where year(date_purch)=2019 and month(date_purch) between 1 and 3) c
) a
order by kat
так, чтобы он выполнял АВС анализ по каждому наименованию телефона независимо от бренд*/

select a.phone_name/*a.brand_name*/,a.total_b,a.total,a.dol,a.dol_ni
,case
when a.dol_ni<=0.8 then 'A'
when a.dol_ni>0.8 and a.dol_ni<=0.95 then 'B'
when a.dol_ni>0.95 then 'C'
else '*' end as kat
from (
select /*a.brand_name*/a.phone_name,a.total_b,c.total
,a.total_b/c.total as dol
,sum(a.total_b/c.total) over(order by a.total_b/c.total desc) as dol_ni
from (
select p.phone_name/*b.brand_name*/
,sum(s.price) as total_b
from purchases s left join phones p on s.phone_id=p.phone_id /*left join brands b on p.brand_id=b.brand_id*/
where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 3
group by /*b.brand_name*/p.phone_name
) a
,(select sum(price) as total from purchases where year(date_purch)=2019 and month(date_purch) between 1 and 3) c
) a
order by kat
