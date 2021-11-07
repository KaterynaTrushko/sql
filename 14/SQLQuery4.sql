/*ЗАДАНИЕ 4.
Измените запрос, который производит анализ среднего чека по торговцам:
select a.merchant_name,count(a.phone_id) qu_t,sum(a.tot_pr) as tot_pr,sum(a.q_s) as q_s
,sum(a.tot_pr)/sum(a.q_s) as avg_ch
from (
select m.merchant_name,s.phone_id,sum(s.price) as tot_pr,count(*) as q_s
from purchases s left join merchants m on s.merchant_id=m.merchant_id
where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 6
group by m.merchant_name,s.phone_id
) a
group by a.merchant_name
order by qu_t desc
так чтобы он производил анализ среднего чека по наименованию бренда*/

select a.Brand_name,count(a.phone_id) qu_t,sum(a.tot_pr) as tot_pr,sum(a.q_s) as q_s
,sum(a.tot_pr)/sum(a.q_s) as avg_ch
from (
select b.Brand_name,s.phone_id,sum(s.price) as tot_pr,count(*) as q_s
from purchases s left join phones p on s.phone_id=p.phone_id
left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 6
group by b.Brand_name,s.phone_id
) a
group by a.Brand_name
order by qu_t desc