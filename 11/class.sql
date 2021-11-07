/*select 
m.merchant_name
,b.Brand_name
,f.phone_name
,c.color_name
,s.amount
,p.price
,iif(p.color_id=11,'Акция','') as akc--условие(само условие, возврат если true,возврат если fols)
,iif(s.amount<=10,iif(s.amount=0,'wait','Заканчиваются'),'') as st --два условия
from phone_price p left join merchants m on p.merchant_id=m.merchant_id
left join phones f on p.phone_id=f.phone_id
left join brands b on f.brand_id=b.brand_id
left join colors c on c.color_id=p.color_id
left join stock s on p.merchant_id=s.merchant_id and p.phone_id=s.phone_id and p.color_id=s.color_id
--where p.color_id=11
order by m.merchant_name
,b.Brand_name
,f.phone_name*/

--CASE

/*select phone_name,battery_type
,case trim(battery_type) --обрезаю все пробелы со всех стотон
when 'Li-Ion' then 'Литий ионная'
when 'Li-Pol' then 'Литий полимерная'
else 'Нет данных'
end as b_t---конец всегда енд начало касе
from phones */

/*select
a.brand_name
,a.phone_name
,a.avg_price
,case
when avg_price>=20000 then 'Premium'
when avg_price>=10000 and avg_price<=20000 then 'LuKs'--важен порядок задания условий, или задавать границы как в примере
when avg_price>=6000 and avg_price<=10000 then 'Top'
when avg_price>=2000 and avg_price<=6000 then 'chip'
when avg_price<=2000  then 'chip'
else '***'
end as class
from
(select
b.Brand_name
,f.phone_name
,round(avg(price),0)as avg_price
from phone_price p left join phones f on p.phone_id=f.phone_id
left join brands b on f.brand_id=b.brand_id
group by b.Brand_name,f.phone_name) a
order by class*/

--Функци проверки условия, если есть hull один раз - то возвращается   нулл

/*select phone_id,negative,neutral,positive,enthusiastic
,isnull(negative*(-1),0)+isnull(neutral*(-1),0)+isnull(positive,0)+isnull(enthusiastic*(0.5),0) as ball
,coalesce(enthusiastic,positive,0)/coalesce(negative,neutral,1) as rt -- когда у нас есть большее количество для выбора coalesce(условие,или условие, услов )
from phone_comment
order by rt*/

select count(*) -- все строки
,count(brand_id) --не пуст
,count(iif(brand_id=5,null,brand_id)) as bez_5 --не учитывать те что =5, если 5 возвращаем пусто
,count(nullif(brand_id,5)) as bez_5_nullif
from phones

--функция котороя сравнивает два значения и возвращает нулл, если равенство истинно, а если
--NULLIF  первый аргумент не равен второму, то возвращается значения первого аргумента

