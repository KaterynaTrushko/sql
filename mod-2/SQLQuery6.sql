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
 select brand_name,phone_name,battery_capacity,weight
 ,battery_capacity/weight as [емкость батареи] 
 from m_phones
 order by [емкость батареи] desc