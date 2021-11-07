/*select
b.Brand_name
,count(*) as qu_sel
,sum(s.price) as tot_grn
from purchases s left join phones p on s.phone_id=p.phone_id
left join brands b on p.brand_id=p.brand_id
where s.phone_id=916472 and s.color_id=17
and year(s.date_purch)=2019  --извлекает год с даты
--and month(s.date_purch) between 10 and 12 -- извлекаем месяцы
and datepart(qq,s.date_purch)=4--принимает на вход дату, но имеет аргумент квартал qq
and datepart(mm,s.date_purch)=4 --извликаем месяц mm
and datepart(mm,s.date_purch)=4
group by b.Brand_name*/


/*select c.client_name,m.merchant_name,p.date_purch
from purchases p left join merchants m on p.merchant_id=m.merchant_id
left join clients c on p.client_id=c.client_id
where p.phone_id=916472 and p.color_id=17
--задаем период который захватывает границы месяцев
and p.date_purch>=DATEFROMPARTS(2019,2,2) --аргумент год, месяц, число
--and p.date_purch<DATEFROMPARTS(2019,2,28) --дата в формате дата-тайм не вывелось 27 число, указ 28
and p.date_purch<=DATETIMEFROMPARTS(2019,2,27,23,59,59,999)
order by date_purch*/

/*select getdate() as c_d   --возвращает текущуу дату
,EOMONTH(getdate()) --выдает последний день месяца
,DATEFROMPARTS(YEAR(getdate()),MONTH(getdate()),1) --первый день текущего месяца
,DATENAME(mm,getdate()) as n_m-- извлекает из даты заданную часть, для месяца она вернет название месяца текстом
,DATENAME(dw,getdate()) as n_w*/

--в день рождение рассылку делать поздно, надо прощитать за 5 дней до даты
/*select client_name, birth_date --у кого сегодня день рождения-подарим по телефону
--,DATEADD(day,-5,getdate())
,client_tlf
from clients
where day(birth_date)=day(DATEADD(day,-5,getdate()))
and month(birth_date)=MONTH(DATEADD(day,-5,getdate()))*/

--вычесляем разницу между датамы
/*select client_id
,count(price) as qu_sell
,min(date_purch) as min
,max(date_purch) as max
,DATEDIFF(dd,min(date_purch),max(date_purch))  --разница между датами
from purchases
where year(date_purch)=2019
group by client_id
having count(price)=2*/

--усичение даты

select getdate() as c_d  --хочу сделать, чтобы содержалось 0часав 0мин первое мгновение дня
,dateadd(dd,detediff(dd,0,getdate()),0) as trunc_d


