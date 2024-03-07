SELECT 
  id,
  name,
  category_name,
  COUNT(*),
  SUM(value) AS total_value,
  MAX(timestamp) AS latest_timestamp
FROM products p
JOIN categories ON products.category_id = category_id 
WHERE price > 50
ORDER BY latest_timestamp 
GROUP BY id,
LIMIT 10