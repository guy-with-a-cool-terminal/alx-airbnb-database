-- Total number of bookings made by each user using COUNT and GROUP BY
SELECT
    u.id AS user_id,
    u.name,
    COUNT(b.id) AS total_bookings
FROM
    users u
LEFT JOIN
    bookings b ON u.id = b.user_id
GROUP BY
    u.id, u.name
ORDER BY
    total_bookings DESC;

-- Use ROW_NUMBER() to rank properties by total bookings
SELECT
    property_id,
    property_name,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number_rank
FROM (
    SELECT
        p.id AS property_id,
        p.name AS property_name,
        COUNT(b.id) AS total_bookings
    FROM
        properties p
    LEFT JOIN
        bookings b ON p.id = b.property_id
    GROUP BY
        p.id, p.name
) AS subquery_row_number
ORDER BY
    row_number_rank;

-- Use RANK() to rank properties by total bookings
SELECT
    property_id,
    property_name,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_position
FROM (
    SELECT
        p.id AS property_id,
        p.name AS property_name,
        COUNT(b.id) AS total_bookings
    FROM
        properties p
    LEFT JOIN
        bookings b ON p.id = b.property_id
    GROUP BY
        p.id, p.name
) AS subquery_rank
ORDER BY
    rank_position;
