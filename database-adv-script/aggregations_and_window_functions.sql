-- Total number of bookings made by each user
SELECT
    u.id AS user_id,
    u.name,
    COUNT(b.id) AS total_bookings
FROM
    users u
LEFT JOIN
    bookings b ON u.id = b.user_id
GROUP BY
    u.id, u.name;

-- Rank properties based on the total number of bookings they have received using RANK()
SELECT
    p.id AS property_id,
    p.name,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM
    properties p
LEFT JOIN
    bookings b ON p.id = b.property_id
GROUP BY
    p.id, p.name;

