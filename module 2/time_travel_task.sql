CREATE TABLE tasty_bytes.raw_pos.truck_dev
    CLONE tasty_bytes.raw_pos.truck;
SELECT * FROM tasty_bytes.raw_pos.truck_dev;
SET saved_query_id = LAST_QUERY_ID();
SET saved_timestamp = CURRENT_TIMESTAMP;
UPDATE tasty_bytes.raw_pos.truck_dev t
    SET t.year = (YEAR(CURRENT_DATE()) -1000);

/* Run the SHOW VARIABLES command. What are the values in the “type” column for saved_query_id and saved_timestamp, in that order?*/
SHOW VARIABLES;

/* When you run “SELECT * FROM tasty_bytes.raw_pos.truck_dev” with AT and specify the timestamp to be the $saved_timestamp variable
 we set earlier, what value is in the “year” column for the truck with a “truck_id” of 1? */
SELECT year FROM tasty_bytes.raw_pos.truck_dev
AT (timestamp => $saved_timestamp)
WHERE truck_id=1;

/*When you run “SELECT * FROM tasty_bytes.raw_pos.truck_dev” with BEFORE and specify the STATEMENT to be the $saved_query_id variable we set earlier, what value is in the “year” column for the truck with a “truck_id” of 2?*/
SELECT year FROM tasty_bytes.raw_pos.truck_dev
before (statement => $saved_query_id)
WHERE truck_id=2;