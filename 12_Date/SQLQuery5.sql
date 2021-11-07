/*ЗАДАНИЕ 5.
В запрос написанный в предыдущем задании добавьте столбец , который вычисляет количество лет между birth_date и
date_purch*/


select *,DATEDIFF(yy,c.birth_date,p.date_purch) as difffrom purchases p left join clients con p.client_id=c.client_idwhere MONTH(p.date_purch)=MONTH(c.birth_date) andDAY(p.date_purch)=DAY(c.birth_date)