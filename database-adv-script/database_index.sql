-- =========================================
-- DATABASE INDEXES
-- =========================================

-- USER TABLE
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_role ON User(role);

-- PROPERTY TABLE
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(pricepernight);

-- BOOKING TABLE
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_start_date ON Booking(start_date);


EXPLAIN ANALYZE SELECT * 
FROM Booking 
WHERE user_id = '9d2e1a77-2a14-4b09-9f33-1f28b83b4b72';
