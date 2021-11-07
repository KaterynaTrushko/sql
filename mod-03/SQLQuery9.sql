select * from m_phones
where (body_type='раскладной' or body_type='слайдер ') and
battery_capacity=1000
order by brand_name