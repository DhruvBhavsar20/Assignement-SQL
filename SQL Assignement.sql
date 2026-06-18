-- Session 1


CREATE DATABASE music_streaming_app;
USE music_streaming_app;

CREATE TABLE playlists (
    playlist_id INT PRIMARY KEY,
    name VARCHAR(100),
    created_by VARCHAR(100)
);

INSERT INTO playlists (playlist_id, name, created_by)
VALUES
(1, 'Bollywood Hits', 'Amit'),
(2, 'Chill Vibes', 'Priya'),
(3, 'Workout Mix', 'Rahul');

SELECT *
FROM playlists
WHERE created_by = 'Amit';

-- * Difference Between Table, Row, and Column (Zomato Example): A table is a collection of related data stored in rows and columns. 
-- For example, in a food delivery app like Zomato, a table named Restaurants can store information about restaurants.A row represents 
-- one complete record in the table. For example, the details of one restaurant such as Pizza Hub would be stored in a single row.
-- A column represents a specific attribute of the data. For example, restaurant_id, restaurant_name, location, and rating are columns in the Restaurants table.


-- Session 2


CREATE DATABASE foodie_app;
USE foodie_app;


CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    location VARCHAR(100)
);

DESCRIBE restaurants;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    created_at DATETIME
);

CREATE TABLE users_error (
    user_id INT PRIMARY KEY
    username VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE users_error (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);



-- SESSION 3

CREATE TABLE Playlist (
    id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    duration INT
);

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES (1, 'Satranga', 'Arijit Singh', 272);

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(2, 'With You', 'AP Dhillon', 205),
(3, 'Excuses', 'AP Dhillon', 238),
(4, 'Heeriye', 'Arjit Singh', 230);

SELECT * FROM Playlist;

UPDATE Playlist
SET artist = 'Arijit Singh'
WHERE artist = 'Arjit Singh';

SELECT * FROM Playlist;

DELETE FROM Playlist
WHERE duration < 120;

SELECT * FROM Playlist;

UPDATE Playlist
SET song_name = CONCAT(song_name, ' (Remix)')
WHERE artist = 'AP Dhillon'
AND duration > 180;

SELECT * FROM Playlist;


-- Session 4

CREATE TABLE MusicPlaylist (
    id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    genre VARCHAR(50),
    duration INT
);

INSERT INTO MusicPlaylist (id, song_name, artist, genre, duration)
VALUES
(1, 'Satranga', 'Arijit Singh', 'Romantic', 272),
(2, 'With You', 'AP Dhillon', 'Pop', 205),
(3, 'Excuses', 'AP Dhillon', 'Punjabi', 238),
(4, 'Heeriye', 'Arijit Singh', 'Romantic', 230),
(5, 'Brown Munde', 'AP Dhillon', 'Punjabi', 250);

SELECT * FROM MusicPlaylist;

SELECT song_name, artist
FROM MusicPlaylist
LIMIT 3;

CREATE TABLE FoodOrders (
    id INT PRIMARY KEY,
    restaurant VARCHAR(100),
    food_item VARCHAR(100),
    order_date DATE
);

INSERT INTO FoodOrders (id, restaurant, food_item, order_date)
VALUES
(1, 'Dominos', 'Pizza', '2025-06-10'),
(2, 'McDonalds', 'Burger', '2025-06-11'),
(3, 'Dominos', 'Garlic Bread', '2025-06-12'),
(4, 'KFC', 'Chicken Bucket', '2025-06-13'),
(5, 'McDonalds', 'Fries', '2025-06-14');

SELECT DISTINCT restaurant
FROM FoodOrders;

SELECT
    food_item AS 'Dish',
    order_date AS 'Date Ordered'
FROM FoodOrders;

SELECT DISTINCT food_item, restaurant
FROM FoodOrders
LIMIT 2;

-- Session 5

CREATE TABLE Restaurants_1 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);

INSERT INTO Restaurants_1 (id, name, cuisine, rating, city)
VALUES
(1, 'Swagat', 'South Indian', 4.5, 'Ahmedabad'),
(2, 'Swadisht', 'Chinese', 4.2, 'Surat'),
(3, 'Pizza Palace', 'Italian', 3.8, 'Vadodara'),
(4, 'Dragon House', 'Chinese', 4.7, 'Ahmedabad'),
(5, 'Tasty Treat', 'North Indian', 3.6, 'Rajkot');

SELECT * FROM Restaurants_1;

SELECT *
FROM Restaurants_1
WHERE rating > 4.0
AND city IN ('Ahmedabad', 'Surat');

SELECT *
FROM Restaurants_1
WHERE name LIKE 'Swa%';

SELECT *
FROM Restaurants_1
WHERE rating BETWEEN 3.5 AND 4.5;

SELECT *
FROM Restaurants_1
WHERE cuisine IN ('Chinese', 'Italian', 'South Indian');

SELECT * FROM Restaurants_1;



-- Session 6

use foodie_app;

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1,'Mobile',15000),
(2,'Laptop',55000),
(3,'Headphones',2000),
(4,'Keyboard',1000),
(5,'Mouse',500),
(6,'Smart Watch',3000);

SELECT *
FROM products
ORDER BY price ASC;

SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

CREATE TABLE movies (
    title VARCHAR(100),
    release_year INT,
    rating DECIMAL(2,1)
);

INSERT INTO movies VALUES
('Jawan',2023,7.2),
('Pathaan',2023,6.8),
('KGF 2',2022,8.3),
('Animal',2023,6.5),
('Pushpa',2021,7.6);

SELECT *
FROM movies
ORDER BY release_year DESC, rating DESC;

SELECT *
FROM Restaurants
ORDER BY name ASC
LIMIT 10;

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(100),
    play_count INT,
    added_date DATE
);

INSERT INTO songs VALUES
(1,'With You',5000,'2025-06-01'),
(2,'Excuses',5000,'2025-06-10'),
(3,'Heeriye',4500,'2025-06-05'),
(4,'Satranga',6000,'2025-06-12'),
(5,'Brown Munde',5500,'2025-06-08');

SELECT *
FROM songs
ORDER BY play_count DESC, added_date DESC
LIMIT 3;


-- Session 7 

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    total_amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO Orders (order_id, user_name, total_amount, order_date)
VALUES
(1, 'Amit', 1200.50, '2025-06-01'),
(2, 'Priya', 850.00, '2025-06-02'),
(3, 'Amit', NULL, '2025-06-03'),
(4, 'Rahul', 2100.75, '2025-06-04'),
(5, 'Priya', 1500.25, '2025-06-05');

SELECT * FROM Orders;

SELECT
    user_name,
    COUNT(order_id) AS order_count
FROM Orders
GROUP BY user_name;

SELECT
    AVG(total_amount) AS average_order_amount
FROM Orders;

SELECT
    MAX(total_amount) AS highest_order_amount,
    MIN(total_amount) AS lowest_order_amount
FROM Orders;

SELECT
    SUM(total_amount) AS total_sales
FROM Orders
WHERE total_amount IS NOT NULL;


-- Session 8 

CREATE DATABASE groupby_having_db;
USE groupby_having_db;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    payment_method VARCHAR(20),
    amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1, 101, 'UPI', 250),
(2, 102, 'Card', 500),
(3, 101, 'UPI', 350),
(4, 103, 'Wallet', 200),
(5, 102, 'Card', 700),
(6, 104, 'COD', 150),
(7, 101, 'Wallet', 450),
(8, 103, 'UPI', 600);

SELECT
    payment_method,
    COUNT(*) AS order_count
FROM Orders
GROUP BY payment_method;

SELECT
    user_id,
    SUM(amount) AS total_spend
FROM Orders
GROUP BY user_id;

SELECT
    payment_method,
    AVG(amount) AS average_amount
FROM Orders
GROUP BY payment_method
HAVING AVG(amount) > 300;

SELECT
    user_id,
    SUM(amount) AS total_spend
FROM Orders
GROUP BY user_id
HAVING SUM(amount) > 800;


-- Session 9

CREATE TABLE restaurants_7 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO restaurants_7 VALUES
(1, 'Swagat', 'Ahmedabad'),
(2, 'Pizza Palace', 'Surat'),
(3, 'Dragon House', 'Vadodara'),
(4, 'Food Corner', 'Rajkot');

CREATE TABLE dishes (
    id INT PRIMARY KEY,
    restaurant_id INT,
    dish_name VARCHAR(100),
    price DECIMAL(8,2)
);

INSERT INTO dishes VALUES
(101, 1, 'Masala Dosa', 180),
(102, 1, 'Idli', 120),
(103, 2, 'Margherita Pizza', 350),
(104, 2, 'Farmhouse Pizza', 450),
(105, 3, 'Hakka Noodles', 220),
(106, 3, 'Manchurian', 200),
(107, 99, 'Unknown Dish', 150);

SELECT
    d.dish_name,
    d.price,
    r.name AS restaurant_name,
    r.city
FROM dishes d
INNER JOIN restaurants_7 r
ON d.restaurant_id = r.id;

SELECT
    r.name AS restaurant_name,
    r.city,
    d.dish_name,
    d.price
FROM restaurants_7 r
LEFT JOIN dishes d
ON r.id = d.restaurant_id;

SELECT
    d.dish_name,
    d.price,
    r.name AS restaurant_name
FROM restaurants_7 r
RIGHT JOIN dishes d
ON r.id = d.restaurant_id;


-- sesion 10

use foodie_app;

CREATE TABLE Influencers (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Collaborations (
    id INT PRIMARY KEY,
    influencer1_id INT,
    influencer2_id INT,
    collab_date DATE
);

INSERT INTO Influencers VALUES
(1,'Aman'),
(2,'Riya'),
(3,'Karan'),
(4,'Neha');

INSERT INTO Collaborations VALUES
(1,1,2,'2025-06-01'),
(2,2,3,'2025-06-10');

SELECT i.name AS influencer_name,
       p.name AS partner_name
FROM Influencers i
LEFT JOIN Collaborations c
ON i.id = c.influencer1_id
LEFT JOIN Influencers p
ON c.influencer2_id = p.id

UNION

SELECT i.name AS influencer_name,
       p.name AS partner_name
FROM Influencers i
RIGHT JOIN Collaborations c
ON i.id = c.influencer1_id
RIGHT JOIN Influencers p
ON c.influencer2_id = p.id;

CREATE TABLE Playlists (
    id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    parent_playlist_id INT
);

SELECT
    p1.playlist_name AS Playlist,
    p2.playlist_name AS Parent_Playlist
FROM Playlists p1
LEFT JOIN Playlists p2
ON p1.parent_playlist_id = p2.id;

CREATE TABLE Users (
    id INT PRIMARY KEY,
    username VARCHAR(50)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    user_id INT,
    order_date DATE
);

CREATE TABLE Payments (
    id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2)
);

SELECT
    u.username,
    o.order_date,
    p.amount
FROM Users u
LEFT JOIN Orders o
ON u.id = o.user_id
LEFT JOIN Payments p
ON o.id = p.order_id;

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT
);

-- Session 11

CREATE DATABASE session11_subqueries;
USE session11_subqueries;

CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    avg_rating DECIMAL(3,2)
);

INSERT INTO Restaurants VALUES
(1,'Swagat','Ahmedabad',4.5),
(2,'Food Hub','Ahmedabad',3.8),
(3,'Pizza Palace','Surat',4.6),
(4,'Spice Garden','Surat',4.0),
(5,'Dragon House','Vadodara',4.7);

SELECT restaurant_name, city, avg_rating
FROM Restaurants r1
WHERE avg_rating >
(
    SELECT AVG(avg_rating)
    FROM Restaurants r2
    WHERE r1.city = r2.city
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT
);

INSERT INTO Users VALUES
(1,'Amit'),
(2,'Priya'),
(3,'Rahul');

INSERT INTO Orders VALUES
(101,1),
(102,1),
(103,2),
(104,1),
(105,3);

SELECT
    user_name,
    (
        SELECT COUNT(*)
        FROM Orders o
        WHERE o.user_id = u.user_id
    ) AS total_orders
FROM Users u;


CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100)
);

INSERT INTO Movies VALUES
(1,'Jawan'),
(2,'Animal'),
(3,'KGF 2');

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    rating INT
);


INSERT INTO Reviews VALUES
(1,1,5),
(2,1,4),
(3,2,3),
(4,3,5);

SELECT movie_name
FROM Movies
WHERE movie_id IN
(
    SELECT movie_id
    FROM Reviews
    WHERE rating = 5
);

CREATE TABLE Sellers (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(100)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    seller_id INT,
    category_id INT
);

SELECT seller_name
FROM Sellers s
WHERE NOT EXISTS
(
    SELECT category_id
    FROM Categories c
    WHERE NOT EXISTS
    (
        SELECT *
        FROM Products p
        WHERE p.seller_id = s.seller_id
        AND p.category_id = c.category_id
    )
);


-- Session 12


CREATE DATABASE session12_cte;
USE session12_cte;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    rating DECIMAL(2,1)
);

WITH TopRatedProducts AS
(
    SELECT *
    FROM Products
    WHERE rating > 4.5
)
SELECT *
FROM TopRatedProducts;

CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    delivery_charge DECIMAL(5,2)
);

SELECT *
FROM
(
    SELECT *
    FROM Restaurants
    WHERE city = 'Ahmedabad'
) AS AhmedabadRestaurants
WHERE delivery_charge < 50;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100),
    followers INT
);

CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    post_title VARCHAR(100),
    likes_count INT
);

WITH TopUsers AS
(
    SELECT username, followers
    FROM Users
    ORDER BY followers DESC
    LIMIT 3
),
TopPosts AS
(
    SELECT post_title, likes_count
    FROM Posts
    ORDER BY likes_count DESC
    LIMIT 3
)
SELECT
    username AS item_name,
    followers AS value,
    'Top User' AS category
FROM TopUsers

UNION ALL

SELECT
    post_title,
    likes_count,
    'Top Post'
FROM TopPosts;


WITH RECURSIVE Next7Days AS
(
    SELECT CURDATE() AS booking_date

    UNION ALL

    SELECT booking_date + INTERVAL 1 DAY
    FROM Next7Days
    WHERE booking_date < CURDATE() + INTERVAL 6 DAY
)
SELECT *
FROM Next7Days;

SELECT *
FROM
(
    SELECT *
    FROM Users
    WHERE followers > 1000
) AS PopularUsers;

WITH PopularUsers AS
(
    SELECT *
    FROM Users
    WHERE followers > 1000
)
SELECT *
FROM PopularUsers;

-- Session 13

CREATE DATABASE Session13_DB;
USE Session13_DB;

-- Task 1: Create Playlists Table

CREATE TABLE Playlists (
    id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    total_likes INT
);

INSERT INTO Playlists VALUES
(1, 101, 'Workout Beats', 500),
(2, 101, 'Chill Vibes', 750),
(3, 101, 'Road Trip Mix', 600),
(4, 102, 'Bollywood Hits', 900),
(5, 102, 'Party Songs', 700),
(6, 103, 'LoFi Study', 850),
(7, 103, 'Morning Motivation', 850),
(8, 103, 'Relaxing Music', 650);

SELECT
    id,
    user_id,
    playlist_name,
    total_likes,
    ROW_NUMBER() OVER (ORDER BY total_likes DESC) AS row_num
FROM Playlists;

SELECT
    playlist_name,
    user_id,
    total_likes,
    RANK() OVER (ORDER BY total_likes DESC) AS playlist_rank
FROM Playlists;

SELECT
    playlist_name,
    user_id,
    total_likes,
    DENSE_RANK() OVER (
        PARTITION BY user_id
        ORDER BY total_likes DESC
    ) AS dense_rank
FROM Playlists;

SELECT
    id,
    user_id,
    playlist_name,
    total_likes
FROM (
    SELECT
        id,
        user_id,
        playlist_name,
        total_likes,
        ROW_NUMBER() OVER (
            PARTITION BY user_id
            ORDER BY total_likes DESC
        ) AS rn
    FROM Playlists
) AS RankedPlaylists
WHERE rn <= 2;



-- Session 14 


CREATE DATABASE Session14_DB;
USE Session14_DB;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(101, 1, '2025-06-01', 250.00),
(102, 1, '2025-06-05', 400.00),
(103, 1, '2025-06-10', 350.00),
(104, 2, '2025-06-02', 150.00),
(105, 2, '2025-06-08', 300.00),
(106, 3, '2025-06-04', 500.00),
(107, 3, '2025-06-12', 700.00);

SELECT
    user_id,
    order_id,
    order_date,
    total_amount,
    LAG(total_amount) OVER (
        PARTITION BY user_id
        ORDER BY order_date
    ) AS previous_order_amount
FROM Orders;

SELECT
    user_id,
    order_id,
    order_date,
    total_amount,
    LEAD(total_amount) OVER (
        PARTITION BY user_id
        ORDER BY order_date
    ) AS next_order_amount
FROM Orders;

SELECT
    user_id,
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        PARTITION BY user_id
        ORDER BY order_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM Orders;

SELECT
    user_id,
    order_id,
    order_date,
    total_amount,
    AVG(total_amount) OVER (
        PARTITION BY user_id
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg
FROM Orders;

SELECT
    user_id,
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        PARTITION BY user_id
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) /
    COUNT(*) OVER (
        PARTITION BY user_id
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg
FROM Orders;

