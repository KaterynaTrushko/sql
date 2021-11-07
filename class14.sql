--Динамика продаж Темп роста = выручка текущего периодна/предыдущий период
--DNM
/*select b.Brand_name,count(*) as q_sell,sum(s.price) as tot_grn
,sum(case when month(s.date_purch) between 1 and 6 then s.price else 0 end) as hy1
,sum(case when month(s.date_purch) between 7 and 12 then s.price else 0 end) as hy2
,round(100*(sum(case when month(s.date_purch) between 7 and 12 then s.price else 0 end)/
sum(case when month(s.date_purch) between 1 and 6 then s.price else 0 end)-1),2) as dnm
from purchases s left join phones p on s.phone_id=p.phone_id
left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019
group by b.Brand_name*/

---ABC  Узнать долю выручки продукта

/*select
a.Brand_name,a.tot_b,a.total,a.dol,a.dol_in
,case 
when a.dol_in<=0.8 then 'A'
when a.dol_in>0.8 and a.dol_in<=0.95 then  'B'
else 'C' end as cut
from
(select a.Brand_name, a.tot_b,b.total
,a.tot_b/b.total as dol
,sum(a.tot_b/b.total) over(order by a.tot_b/b.total desc) as dol_in
from
(select b.Brand_name, sum(s.price) as tot_b
from purchases s left join phones p on s.phone_id=p.phone_id
left join brands b on b.brand_id=p.brand_id
where YEAR(s.date_purch)=2019 and month(s.date_purch) between 1 and 3
group by b.Brand_name) a
,(select sum(price) as total from purchases where year(date_purch)=2019
 and month(date_purch) between 1 and 3) b
 --order by dol desc
 ) a*/

 --Анализ равномерности спроса по коэфициенту вариации

 /*select a.Brand_name,a.m01,a.m02,a.m03,a.m04,a.m05,a.m06,a.tot_avg
 ,sqrt((square(a.m01-a.tot_avg)+square(a.m02-a.tot_avg)+square(a.m03-a.tot_avg)+square(a.m04-a.tot_avg)
 +square(a.m05-a.tot_avg)+square(a.m06-a.tot_avg))/6)/a.tot_avg as k_xyz
  ,case
 when sqrt((square(a.m01-a.tot_avg)+square(a.m02-a.tot_avg)+square(a.m03-a.tot_avg)+square(a.m04-a.tot_avg)
 +square(a.m05-a.tot_avg)+square(a.m06-a.tot_avg))/6)/a.tot_avg < 0.1 then 'X'
 when sqrt((square(a.m01-a.tot_avg)+square(a.m02-a.tot_avg)+square(a.m03-a.tot_avg)+square(a.m04-a.tot_avg)
 +square(a.m05-a.tot_avg)+square(a.m06-a.tot_avg))/6)/a.tot_avg < 0.25 then 'Y'
 else 'Z' end as XYZ
  from
 (select
 b.Brand_name
 ,sum(iif(MONTH(s.date_purch)=1,1,0)) as m01
 ,sum(iif(MONTH(s.date_purch)=2,1,0)) as m02
 ,sum(iif(MONTH(s.date_purch)=3,1,0)) as m03
 ,sum(iif(MONTH(s.date_purch)=4,1,0)) as m04
 ,sum(iif(MONTH(s.date_purch)=5,1,0)) as m05
 ,sum(iif(MONTH(s.date_purch)=6,1,0)) as m06
 ,count(*) as tot 
 ,count(*)/6 as tot_avg
 from
 purchases s left join phones p on s.phone_id=p.phone_id
 left join brands b on p.brand_id=b.brand_id
 where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 6
 group by b.Brand_name having count(*)/6<>0) a
 order by k_xyz*/


 --РАСЧЕТ СРЕДНЕГО ЧЕКА


 /*select a.merchant_name,count(a.phone_id) as qu_t,sum(a.tot_pr),sum(q_s)
 ,sum(a.tot_pr)/sum(q_s) as avg_ch
 from
 (select m.merchant_name,s.phone_id,sum(s.price) as tot_pr,count(*) as q_s
 from purchases s left join merchants m on s.merchant_id=m.merchant_id
 where year(s.date_purch)=2019 and month(s.date_purch) between 1 and 6
 group by m.merchant_name,s.phone_id) a 
 group by a.merchant_name
 order by qu_t*/


