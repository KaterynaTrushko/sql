--select min(price),max(price),avg(price),sum(price),count(*),count(price) from m_phonesselect
--select count(phone_name),sum(price),avg(price) from m_phones
/*select count(phone_name) as[?????????? ????????????]
,sum(price) [????? ???] 
,avg(price) as[??????? ????]
,count(price) as[?????????? ????????? ? ?????]
,sum(price)/count(phone_name)
,sum(price)/count(price)
from m_phones*/
--select * from m_phones
--select brand_name,phone_name,heigh,width,thickness,heigh*width*thickness as volume from m_phones
--select * from m_phones order by brand_name desc, memory desc
--select * from m_phones order by brand_name asc, battery_capacity
select brand_name,phone_name,weight,price,round(price/weight,2) as[???? ?? ???]
from m_phones
order by [???? ?? ???] desc