/*ЗАДАНИЕ 3.
Напишите UPDATE SQL запрос, который уменьшает цену телефонов добавленных в таблицу new_phone_price в предыдущем
задании на 100 грн. Напишите SQL запрос, выводящий изменённые строки*/update new_phone_priceset  price=price-100from new_phone_price where phone_id=0select * from new_phone_pricewhere phone_id=0