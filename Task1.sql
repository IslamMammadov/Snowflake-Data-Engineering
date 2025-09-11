--How many items are there with an item_category of 'Snack' and an item_subcategory of 'Warm Option'?
SELECT COUNT(1) AS cnt
FROM tasty_bytes_sample_data.raw_pos.menu
WHERE item_category = 'Snack' AND item_subcategory = 'Warm Option'

/*
What are the max sales prices for each of the three item subcategories 
(hot option, warm option, cold option)? List from highest price to lowest.
*/
SELECT item_subcategory, MAX(sale_price_usd) AS max_sales_price
FROM tasty_bytes_sample_data.raw_pos.menu
WHERE item_subcategory IN ('Hot Option', 'Cold Option', 'Warm Option')
GROUP BY item_subcategory
ORDER BY max_sales_price DESC;