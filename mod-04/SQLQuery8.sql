/*ЗАДАНИЕ 8.
Напишите SQL-запрос, который выбирает из таблицы M_PHONES столбцы brand_name, phone_name, memory, price.
Отобрать только те строки, где столбец brand_name равен 'samsung', а столбец price не является NULL .
Отсортировать строки по столбцам memory, price. Используя over() добавьте столбец c порядковым номером строки,
порядок сортировки - memory, price. Используя over() добавьте ещё один столбец c порядковым номером строки,
порядок сортировки – price по убыванию. Дайте названия добавленным столбцам*/select brand_name, phone_name, memory,price,row_number() over (order by memory,price) as row_num,row_number() over (order by price desc) as row_num_pricefrom m_phoneswhere brand_name in ('samsung') and price is not nullorder by memory,price