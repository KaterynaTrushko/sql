--работа с датами

select
b.Brand_name
,count(*) as qu_sel
,sum(s.price) as tot_grn
from purchases s left join phones p on s.phone_id=p.phone_id
left join brands b on p.brand_id=p.brand_id
group by b.Brand_name

