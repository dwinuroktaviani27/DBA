SELECT c.city_name, p.product_name, ROUND(SUM(ii.line_total_price), 2) as total
FROM city c, customer cu, invoice i, invoice_item ii, product p
WHERE c.id = cu.city_id and cu.id = i.customer_id and i.id = ii.invoice_id and ii.product_id =  p.id
GROUP BY c.city_name, p.product_name
ORDER BY total DESC, c.city_name, p.product_name;

SELECT ci.city_name, pr.product_name, ROUND(SUM(ii.line_total_price), 2) as tot
FROM city ci
JOIN customer cu ON ci.id = cu.city_id
JOIN invoice i ON cu.id = i.customer_id
JOIN invoice_item ii ON i.id = ii.invoice_id
JOIN product pr ON ii.product_id = pr.id
GROUP BY ci.city_name, pr.product_name
ORDER BY tot DESC, ci.city_name, pr.product_name;