/*??????? 1.
????????????? ?????? ??????? ???????? ?????? :
select b.brand_name,count(*) as q_sell,sum(s.price) as total_grn
,sum(case when month(s.date_purch) between 1 and 6 then s.price else 0 end) as hy1
,sum(case when month(s.date_purch) between 7 and 12 then s.price else 0 end) as hy2
,round(100*(sum(case when month(date_purch) between 7 and 12 then s.price else 0 end)/
sum(case when month(date_purch) between 1 and 6 then s.price else 0 end)-1),2) as dnm
from purchases s left join phones p on s.phone_id=p.phone_id
left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019
group by b.brand_name
??? ????? ???????? ???????? ?????? ?? 2019 ??? ????????????, 2-? ??????? ?? ????????? ? 1-?, 3-? ?? ?????????
?? 2-? ? 4-? ?? ????????? ? 3-?. ??????????? ??????? NULLIF() ????? ???????? ???????? ??????? ?? 0*/
select b.brand_name,count(*) as q_sell,sum(s.price) as total_grn
,sum(case when month(s.date_purch) between 1 and 3 then s.price else 0 end) as cv1
,sum(case when month(s.date_purch) between 4 and 6 then s.price else 0 end) as cv2
,sum(case when month(s.date_purch) between 7 and 9 then s.price else 0 end) as cv3
,sum(case when month(s.date_purch) between 10 and 12 then s.price else 0 end) as cv4
,round(100*(sum(case when month(date_purch) between 4 and 6 then s.price else 0 end)/nullif(
sum(case when month(date_purch) between 4 and 6 then s.price else 0 end),0)-1),2) as cv2_cv1
,round(100*(sum(case when month(date_purch) between 7 and 9 then s.price else 0 end)/nullif(
sum(case when month(date_purch) between 4 and 6 then s.price else 0 end),0)-1),2) as cv3_cv2
,round(100*(sum(case when month(date_purch) between 10 and 13 then s.price else 0 end)/nullif(
sum(case when month(date_purch) between 7 and 9 then s.price else 0 end),0)-1),2) as cv4_cv3
from purchases s left join phones p on s.phone_id=p.phone_id
left join brands b on p.brand_id=b.brand_id
where year(s.date_purch)=2019
group by b.brand_name

