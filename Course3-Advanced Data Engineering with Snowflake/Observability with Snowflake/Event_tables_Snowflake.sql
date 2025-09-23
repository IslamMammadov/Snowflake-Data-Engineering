USE DATABASE snowflake;
USE SCHEMA telemetry;
SELECT * FROM events;

DESCRIBE TABLE events;

USE database TASTY_BYTES;
CREATE OR REPLACE SCHEMA telemetry;
CREATE OR REPLACE EVENT TABLE pipeline_events;

DESCRIBE table pipeline_events;

ALTER ACCOUNT SET EVENT_TABLE =TASTY_BYTES.telemetry.pipeline_events;