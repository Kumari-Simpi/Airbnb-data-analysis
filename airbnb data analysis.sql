SELECT * FROM airbnb;

-- Most Popular Neighbourhoods (Number of Listings)
SELECT neighbourhood, COUNT(*) AS number_of_listings
FROM airbnb
GROUP BY neighbourhood
ORDER BY number_of_listings DESC
LIMIT 10;

-- Average Price by Room Type
SELECT `room type`, AVG(price) AS average_price
FROM airbnb
GROUP BY `room type`
ORDER BY average_price DESC;

--  Price by Cancellation Policy
SELECT cancellation_policy, AVG(price) AS average_price
FROM airbnb
GROUP BY cancellation_policy
ORDER BY average_price DESC;

-- Price Distribution by neighbourhood group
SELECT `neighbourhood group`, AVG(price) AS average_price
FROM airbnb
GROUP BY `neighbourhood group`
ORDER BY average_price DESC;

-- Top Reviews and Most Expensive Listings
SELECT NAME, price, `number of reviews`
FROM airbnb
ORDER BY `number of reviews` DESC, price DESC
LIMIT 10;