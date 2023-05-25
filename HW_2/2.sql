SELECT bucket, 
       IF (bucket < 100, 'Маленький заказ', IF (bucket BETWEEN 100 AND 300, 'Средний заказ', 'Большой заказ')) AS Размер_заказа 
FROM sales 
ORDER BY bucket;
