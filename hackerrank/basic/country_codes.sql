SELECT c.customer_id,c.name,concat("+",cc.country_code,c.phone_number)
FROM customers as c
LEFT join country_codes as cc
ON c.country=cc.country
ORDER BY c.customer_id;