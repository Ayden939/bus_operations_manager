CREATE TABLE  IF NOT EXISTS drivers(
    driver_id INT PRIMARY KEY,
name VARCHAR(100)
)

CREATE TABLE  IF NOT EXISTS buses(
    bus_id INT PRIMARY KEY,
    bus_number VARCHAR(10),
    capacity INT,
    is_accessible BOOLEAN
)

CREATE TABLE  IF NOT EXISTS runs(
    run_id INT PRIMARY KEY,
    driver_id INT,
    bus_id INT,
    run_code VARCHAR(10),
    trip_date DATE,
    odometer INT,
    on_duty_time TIME,
    spot_time TIME,
    final_drop_time TIME,
    off_duty_time TIME
)

CREATE TABLE  IF NOT EXISTS trip_blocks(
    trip_id INT PRIMARY KEY,
    run_id INT,
    start_time TIME,
    route_description TEXT,
    completed BOOLEAN
)