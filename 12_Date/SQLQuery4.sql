/*ЗАДАНИЕ 4.
Напишите SQL-запрос, который выбирает все столбцы из таблиц purchases и clients связанных по столбцу client_id. Задайте условие
отбора строк, которое выведет только те строки, у которых месяц даты из столбцов date_purch и birth_date будет одинаковым и
день даты из этих же столбцов будет одинаковым*/select *from purchases p left join clients con p.client_id=c.client_idwhere MONTH(p.date_purch)=MONTH(c.birth_date) andDAY(p.date_purch)=DAY(c.birth_date)