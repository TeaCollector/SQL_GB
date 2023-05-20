USE my_db;
SELECT *
FROM phone_store
WHERE product_name REGEXP '[0-9]';