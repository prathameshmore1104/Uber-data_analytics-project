SELECT TOP (100) [VendorID]
,[tpep_pickup_datetime]
,[tpep_dropoff_datetime]
,[passenger_count]
,[trip_distance]
,[pickup_longitude]
,[pickup_latitude]
,[RatecodeID]
,[store_and_fwd_flag]
,[dropoff_longitude]
,[dropoff_latitude]
,[payment_type]
,[fare_amount]
,[extra]
,[mta_tax]
,[tip_amount]
,[tolls_amount]
,[improvement_surcharge]
,[total_amount]
,[trip_id]
 FROM [uberDB].[dbo].[uber_data]

SELECT payment_type, SUM(tip_amount) AS TotalTipAmount
FROM [uberDB].[dbo].[uber_data]
GROUP BY payment_type;


SELECT TOP 10 *
FROM [uberDB].[dbo].[uber_data]
ORDER BY total_amount DESC;

SELECT CONVERT(date, tpep_pickup_datetime) AS PickupDate, SUM(total_amount) AS TotalAmountEarned
FROM [uberDB].[dbo].[uber_data]
GROUP BY CONVERT(date, tpep_pickup_datetime);

SELECT VendorID, SUM(total_amount) AS TotalAmountEarned
FROM [uberDB].[dbo].[uber_data]
GROUP BY VendorID;