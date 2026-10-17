-- Project 2: SQL Music Store Business Analysis
-- Database: Chinook SQLite sample database

-- 1. Customer count by country
SELECT
    Country,
    COUNT(*) AS number_of_customers
FROM Customer
GROUP BY Country
ORDER BY number_of_customers DESC;

-- 2. Revenue and invoice count by country
SELECT
    c.Country,
    ROUND(SUM(i.Total), 2) AS total_revenue,
    COUNT(i.InvoiceId) AS number_of_invoices
FROM Customer AS c
JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY total_revenue DESC;

-- 3. Top 10 customers by total invoice value
SELECT
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS customer_name,
    c.Country,
    ROUND(SUM(i.Total), 2) AS total_spent,
    COUNT(i.InvoiceId) AS number_of_invoices
FROM Customer AS c
JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country
ORDER BY total_spent DESC
LIMIT 10;

-- 4. Top 10 tracks by sales revenue
SELECT
    t.TrackId,
    t.Name AS track_name,
    ar.Name AS artist_name,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS total_revenue,
    SUM(il.Quantity) AS units_sold
FROM Track AS t
JOIN InvoiceLine AS il
    ON t.TrackId = il.TrackId
JOIN Album AS al
    ON t.AlbumId = al.AlbumId
JOIN Artist AS ar
    ON al.ArtistId = ar.ArtistId
GROUP BY
    t.TrackId,
    t.Name,
    ar.Name
ORDER BY total_revenue DESC
LIMIT 10;
