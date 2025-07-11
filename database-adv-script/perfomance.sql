-- Initial query retrieving all bookings with user, property, and payment details
EXPLAIN
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM
    bookings b
JOIN
    users u ON b.user_id = u.id
JOIN
    properties p ON b.property_id = p.id
JOIN
    payments pay ON b.id = pay.booking_id
WHERE
    b.start_date >= '2024-01-01'
    AND b.end_date <= '2024-12-31';

-- Optimized version (uses same WHERE + AND but assumes indexes exist)
EXPLAIN
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM
    bookings b
JOIN
    users u ON b.user_id = u.id
JOIN
    properties p ON b.property_id = p.id
LEFT JOIN
    payments pay ON b.id = pay.booking_id
WHERE
    b.start_date >= '2024-01-01'
    AND b.end_date <= '2024-12-31';
