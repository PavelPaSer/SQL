SELECT * FROM GB_schema.product_range;

SELECT * 
FROM GB_schema.product_range
WHERE manufacturer LIKE 'Samsung';

SELECT * 
FROM GB_schema.product_range
WHERE manufacturer LIKE 'Apple';

SELECT * 
FROM GB_schema.product_range
WHERE product_name REGEXP '[[0-9]]';

SELECT * 
FROM GB_schema.product_range
WHERE product_name REGEXP '[[8]]';