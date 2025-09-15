/*Use the CREATE DATABASE… CLONE command to create a clone of tasty_bytes, and call this new database “tasty_bytes_clone”.
When you run this CREATE DATABASE… CLONE command, what status message do you see in Results?*/
CREATE DATABASE tasty_bytes_clone
CLONE tasty_bytes;

/*Use the CREATE TABLE… CLONE command to create a clone of tasty_bytes.raw_pos.truck, and call this new table “truck_clone” and put it in the “raw_pos” schema in the “tasty_bytes” database.
When you run this CREATE TABLE… CLONE command, what status message do you see in Results? */
CREATE TABLE tasty_bytes.raw_pos.truck_clone
CLONE tasty_bytes.raw_pos.truck;

--Run the command, which shows information from the TABLE_STORAGE_METRICS view about the “truck_clone” and “truck” tables: