/*ЗАДАНИЕ 7.
Напишите SQL запрос, выбирающий из таблицы phone_price первые две строки (сортировка по столбцу price) , условие
отбора merchant_id=2 and color_id=23. Используя данный запрос как подзапрос, свяжите его с таблицей
new_phone_price с помощью команды JOIN в новом запросе, который выберет соответствующие две строки из
таблицы new_phone_price. Преобразуйте созданный запрос в DELETE SQL запрос, который удалит выбранные две
строки из таблицы new_phone_price. Проверьте результат*/delete from(select n.*from(select top 2 * from phone_pricewhere merchant_id=2 and color_id=23order by price) ajoinnew_phone_price non a.color_id=n.color_id)where exists (select top 2 * from phone_pricewhere merchant_id=2 and color_id=23order by price)--new_phone_price нет строк, может я их удалила в ходе решения предыдущих задач