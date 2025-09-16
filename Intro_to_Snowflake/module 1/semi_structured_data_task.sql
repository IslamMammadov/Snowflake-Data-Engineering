/*Use the DESCRIBE TABLE command to learn more about the “menu” table in the “raw_pos” schema in the “tasty_bytes” database.
What is the value in the “type” column for the row associated with MENU_ITEM_HEALTH_METRICS_OBJ?
*/
DESCRIBE TABLE  tasty_bytes.raw_pos.menu;

/* Use the TYPEOF function to check the underlying data type of MENU_ITEM_HEALTH_METRICS_OBJ. What is it?*/
SELECT TYPEOF(menu_item_health_metrics_obj)  FROM tasty_bytes.raw_pos.menu;

/* you want to get the result “Sweet Mango” from menu item name 'Mango Sticky Rice'*/

SELECT MENU_ITEM_HEALTH_METRICS_OBJ['menu_item_health_metrics'][0]['ingredients'][0]FROM tasty_bytes.raw_pos.menu
WHERE MENU_ITEM_NAME = 'Mango Sticky Rice';

/*Unnest json forma like data using lateral flatten function example */
SELECT VALUE:"ingredients"[0] FROM tasty_bytes.raw_pos.menu m,
lateral flatten(input => m.menu_item_health_metrics_obj:menu_item_health_metrics);