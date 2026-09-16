CREATE DATABASE ola_analytics;

USE ola_analytics;

SELECT *
FROM ola_feature_engineered
LIMIT 10;

SELECT COUNT(*) AS Total_Rides
FROM ola_feature_engineered;

SELECT COUNT(*) AS Successful_Rides
FROM ola_feature_engineered
WHERE `Booking Status` = 'Success';

SELECT COUNT(*) AS Cancelled_Rides
FROM ola_feature_engineered
WHERE `Booking Status` LIKE 'Cancelled%';

SELECT COUNT(*) AS Incomplete_Rides
FROM ola_feature_engineered
WHERE `Booking Status` = 'Incomplete';

SELECT
    `Booking Status`,
    COUNT(*) AS Total
FROM ola_feature_engineered
GROUP BY `Booking Status`
ORDER BY Total DESC;

SELECT
    `Vehicle Type`,
    COUNT(*) AS Total_Bookings
FROM ola_feature_engineered
GROUP BY `Vehicle Type`
ORDER BY Total_Bookings DESC;

SELECT
    `Vehicle Type`,
    ROUND(SUM(`Booking Value`), 2) AS Revenue
FROM ola_feature_engineered
GROUP BY `Vehicle Type`
ORDER BY Revenue DESC;

SELECT
    `Vehicle Type`,
    ROUND(AVG(`Booking Value`), 2) AS Avg_Fare
FROM ola_feature_engineered
GROUP BY `Vehicle Type`
ORDER BY Avg_Fare DESC;

SELECT
    ROUND(SUM(`Booking Value`), 2) AS Total_Revenue
FROM ola_feature_engineered;

SELECT
    ROUND(AVG(`Booking Value`), 2) AS Average_Fare
FROM ola_feature_engineered;

SELECT
    `Time Slot`,
    COUNT(*) AS Total_Rides
FROM ola_feature_engineered
GROUP BY `Time Slot`
ORDER BY Total_Rides DESC;

SELECT
    `Month`,
    `Month Name`,
    COUNT(*) AS Total_Bookings
FROM ola_feature_engineered
GROUP BY `Month`, `Month Name`
ORDER BY `Month`;

SELECT
    `Day Name`,
    COUNT(*) AS Total
FROM ola_feature_engineered
GROUP BY `Day Name`;

SELECT
    ROUND(AVG(`Driver Ratings`), 2) AS Avg_Driver_Rating
FROM ola_feature_engineered;

SELECT
    ROUND(AVG(`Customer Rating`), 2) AS Avg_Customer_Rating
FROM ola_feature_engineered;

SELECT
    `Reason for Cancelling by Customer`,
    COUNT(*) AS Total_Cancellations
FROM ola_feature_engineered
WHERE `Reason for Cancelling by Customer` IS NOT NULL
GROUP BY `Reason for Cancelling by Customer`
ORDER BY Total_Cancellations DESC;

SELECT
    `Cancelled Rides by Driver`,
    COUNT(*) AS Total_Cancellations
FROM ola_feature_engineered
WHERE `Cancelled Rides by Driver` IS NOT NULL
GROUP BY `Cancelled Rides by Driver`
ORDER BY Total_Cancellations DESC;

SELECT
    `Reason for Cancelling by Driver`,
    COUNT(*) AS Total
FROM ola_feature_engineered
WHERE `Reason for Cancelling by Driver` IS NOT NULL
GROUP BY `Reason for Cancelling by Driver`
ORDER BY Total DESC;

SELECT
    `Incomplete Rides Reason`,
    COUNT(*) AS Total
FROM ola_feature_engineered
WHERE `Incomplete Rides Reason` IS NOT NULL
GROUP BY `Incomplete Rides Reason`
ORDER BY Total DESC;

SELECT
    `Pickup Location`,
    COUNT(*) AS Total_Bookings
FROM ola_feature_engineered
GROUP BY `Pickup Location`
ORDER BY Total_Bookings DESC
LIMIT 10;

SELECT
    `Drop Location`,
    COUNT(*) AS Total_Bookings
FROM ola_feature_engineered
GROUP BY `Drop Location`
ORDER BY Total_Bookings DESC
LIMIT 10;

SELECT
    `Customer ID`,
    COUNT(*) AS Total_Rides
FROM ola_feature_engineered
GROUP BY `Customer ID`
ORDER BY Total_Rides DESC
LIMIT 10;

SELECT
    `Month`,
    `Month Name`,
    ROUND(SUM(`Booking Value`),2) AS Revenue
FROM ola_feature_engineered
GROUP BY `Month`,`Month Name`
ORDER BY `Month`;

SELECT
    `Payment Method`,
    ROUND(SUM(`Booking Value`),2) AS Revenue
FROM ola_feature_engineered
WHERE `Payment Method` IS NOT NULL
GROUP BY `Payment Method`
ORDER BY Revenue DESC;

SELECT
    `Vehicle Type`,
    ROUND(AVG(`Ride Distance`),2) AS Avg_Distance
FROM ola_feature_engineered
GROUP BY `Vehicle Type`
ORDER BY Avg_Distance DESC;

SELECT
    `Vehicle Type`,
    ROUND(AVG(`Driver Ratings`),2) AS Avg_Driver_Rating
FROM ola_feature_engineered
GROUP BY `Vehicle Type`
ORDER BY Avg_Driver_Rating DESC;

SELECT
    `Vehicle Type`,
    ROUND(AVG(`Customer Rating`),2) AS Avg_Customer_Rating
FROM ola_feature_engineered
GROUP BY `Vehicle Type`
ORDER BY Avg_Customer_Rating DESC;

SELECT
    `Hour`,
    COUNT(*) AS Total_Rides
FROM ola_feature_engineered
GROUP BY `Hour`
ORDER BY `Hour`;

SELECT
    `Date`,
    ROUND(SUM(`Booking Value`),2) AS Daily_Revenue
FROM ola_feature_engineered
GROUP BY `Date`
ORDER BY `Date`;
