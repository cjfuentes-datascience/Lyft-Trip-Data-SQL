-- Let’s examine the three tables.
SELECT * FROM trips; 
SELECT * FROM riders; 
SELECT * FROM cars;

-- Try out a simple cross join between riders and cars.
SELECT *
FROM riders
CROSS JOIN cars;

-- Find the columns to join between trips and riders and combine the two tables using a LEFT JOIN.
SELECT *
FROM trips
LEFT JOIN riders
  ON trips.id = riders.id;

-- Find the columns to join on and combine the trips and cars table using an INNER JOIN.
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

-- The new riders data are in! There are three new users this month. Stack the riders table on top of the new table named riders2.
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- What is the average cost for a trip?
SELECT ROUND(AVG(cost), 2)
FROM trips;

--Find all the riders who have used Lyft less than 500 times!
SELECT *
FROM riders
UNION
SELECT * 
FROM riders2
WHERE total_trips < 500;

--Calculate the number of cars that are active.
SELECT COUNT(*) AS 'num_active_cars'
FROM cars
WHERE status = 'active';

--Write a query that finds the two cars that have the highest trips_completed.
SELECT *
FROM cars 
ORDER BY trips_completed DESC
LIMIT 2;
