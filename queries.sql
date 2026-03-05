-- Task Execution
-- Query 1: JOIN = Retrieve booking information with customer_name and vehicle_name 
-- Solution

SELECT
  b.booking_id,
  u.user_name AS customer_name,
  v.vehicle_name,
  b.rent_start_date,
  b.rent_end_date,
  b.booking_status AS status
FROM
  bookings b
  INNER JOIN users u ON u.user_id = b.user_id
  INNER JOIN vehicles v ON v.vehicle_id = b.vehicle_id;



-- Query 2: EXISTS
-- Task find all vehicles that have never been booked.
-- Solution using NOT EXISTS

SELECT
  *
FROM
  vehicles v
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      bookings b
    WHERE
      b.vehicle_id = v.vehicle_id
);



-- Query 3: WHERE
-- Task Retrieve all available vehicles of a specific type (e.g. cars).
-- Solution
SELECT
  *
FROM
  vehicles
WHERE
  availability_status = 'available'
  AND vehicle_type = 'Car';



-- Query 4: GROUP BY and HAVING
-- Task Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
-- Solution using GROUP BY, HAVING, COUNT

SELECT
  vehicle_name,
  count(bookings.vehicle_id) AS total_bookings
FROM
  bookings
  JOIN vehicles ON vehicles.vehicle_id = bookings.vehicle_id
GROUP BY
  vehicle_name
HAVING
  count(bookings.vehicle_id) > 2;

