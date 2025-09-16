USE DATABASE test_database;
USE SCHEMA test_schema;
CREATE VIEW truck_franchise
AS
SELECT
    t.*,
    f.first_name AS franchisee_first_name,
    f.last_name AS franchisee_last_name
FROM tasty_bytes.raw_pos.truck t
JOIN tasty_bytes.raw_pos.franchise f
    ON t.franchise_id = f.franchise_id;

--What is the “make” of the food truck for the franchisee with the first name of “Sara” and the last name of “Nicholson”?
SELECT make FROM truck_franchise
WHERE franchisee_first_name = 'Sara' AND franchisee_last_name = 'Nicholson'

--Use the DESCRIBE VIEW command to see information about the test_database.test_schema.truck_franchise view. What value is in the “type” column for TRUCK_ID?
 DESCRIBE VIEW test_database.test_schema.truck_franchise;

--Drop the truck_franchise view using the DROP VIEW command. What is the status message in Results?
DROP VIEW test_database.test_schema.truck_franchise;

--Use the CREATE MATERIALIZED VIEW command to create a “nissan” view in the test_database database and the test_schema schema, based on this SQL query:

CREATE MATERIALIZED VIEW nissan
AS
SELECT
    t.*
FROM tasty_bytes.raw_pos.truck t
WHERE make = 'Nissan';

SELECT count(1) as cnt FROM nissan;

--Drop the “nissan” materialized view using the DROP MATERIALIZED VIEW command. What is the status in the Results?
DROP MATERIALIZED VIEW nissan;