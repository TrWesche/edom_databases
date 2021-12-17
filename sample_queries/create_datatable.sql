----------------------------------------
-- Hypertable to store mqtt numeric data
----------------------------------------
-- Step 1: Define regular table
CREATE TABLE IF NOT EXISTS mqtt_data_test (

   time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
   topic TEXT NOT NULL,
   dataIdentifier TEXT NOT NULL,
   value NUMERIC NOT NULL
);

-- Step 2: Turn into hypertable
SELECT create_hypertable('mqtt_data_test','time');