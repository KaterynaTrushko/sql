/*ЗАДАНИЕ 7.
Напишите SQL-запрос, который выбирает из таблицы M_PHONES столбцы brand_name, phone_name, memory, price.
Отобрать только те строки, где столбец brand_name равен 'apple'. Отсортировать строки по столбцам memory, price.
Добавьте столбец, который в каждой строке выборки будет показывать количество наименований телефонов для
соответствующего объёма памяти (применить over(partition by)). Добавьте столбец, который в каждой строке
выборки будет показывать среднюю цену телефона для соответствующего объёма памяти (применить over(partition
by)). Дайте названия добавленным столбцам*/select brand_name,phone_name,memory,price,count(brand_name) over(partition by memory) as count_brand_name,avg(price) over(partition by memory) as avg_pricefrom m_phoneswhere brand_name in ('apple')order by memory, price