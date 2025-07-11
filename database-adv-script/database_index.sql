-- Index for user_id in bookings (frequent joins)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index for property_id in bookings (frequent joins and filtering)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index for start_date in bookings (used in partitioning and date queries)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index for property_id in reviews (used in joins and aggregations)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Index for email in users (likely used in filtering or logins)
CREATE INDEX idx_users_email ON users(email);

