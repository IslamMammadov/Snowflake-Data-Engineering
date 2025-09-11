/*
Create a warehouse named “warehouse_one” using the CREATE WAREHOUSE command. 
Then use SHOW WAREHOUSES to see metadata about the warehouse. What size is the warehouse?
*/
CREATE WAREHOUSE warehouse_one;
SHOW WAREHOUSES;

/* Now create a new warehouse named “warehouse_two”. Then use the USE WAREHOUSE command to switch over to using warehouse_two. 
Then use SHOW WAREHOUSES. What does warehouse_one say for “is_current”, and what does warehouse_two say for “is_current”?
*/
CREATE WAREHOUSE warehouse_two;
USE WAREHOUSE warehouse_two;
SHOW WAREHOUSES;

--Drop warehouse_two using the DROP WAREHOUSE command. What does the status message say? 
DROP WAREHOUSE warehouse_two;

/*
Use the “ALTER WAREHOUSE” command and “SET warehouse_size” to change warehouse_one to a SMALL warehouse. Then use SHOW WAREHOUSES.
What is the text listed in the “size” column next to warehouse_one?
*/
ALTER WAREHOUSE warehouse_one SET warehouse_size = Small;
SHOW WAREHOUSES;

/*
Use the “ALTER WAREHOUSE” command and “SET auto_suspend” to set the warehouse_one auto-suspend parameter to two minutes.
Then use SHOW WAREHOUSES. What is the number in the “auto_suspend” column in the warehouse_one row?
*/
ALTER WAREHOUSE warehouse_one SET AUTO_SUSPEND = 120;
SHOW WAREHOUSES;