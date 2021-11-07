/*select brand_name,phone_name,ram,price from m_phones
order by  price*/
 /*select brand_name,phone_name,ram,price from m_phones
 order by price desc*/
 /*select brand_name,phone_name,ram,price from m_phones
 order by ram desc, price */
 /*select  brand_name,phone_name,ram,price from m_phones
 order by price, ram desc*/
 /*select brand_name,phone_name,battery_capacity,weight
 ,battery_capacity/weight as [емкость батареи] 
 from m_phones
 order by battery_capacity/weight desc*/
  
/* select brand_name,phone_name,battery_capacity,weight
 ,battery_capacity/weight as [емкость батареи] 
 from m_phones
 order by [емкость батареи] desc*/
 /*select brand_name,phone_name,battery_capacity,weight
 ,round(battery_capacity/weight,0) as [емкость батареи] 
 from m_phones
 order by [емкость батареи] desc*/
 --select * from m_phones
 /*select min(weight) as min_weight
 ,max(weight) as max_weight
 ,round(avg(weight),2) as avg_weight
 ,round(sum(weight)/count(weight),2) as [средний вес по агрегатным функциям]
 ,round(sum(weight)/count(*),2) as [результат деления суммы всех весов на кол строк]
 from m_phones*/
 select  brand_name,phone_name
 ,round(battery_capacity/weight,2) as [емкость батареи]
 from m_phones
 order  by brand_name, [емкость батареи]
 