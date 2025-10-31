SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    b.created_at AS booking_created_at,
    
    -- User Details
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.role,
    
    -- Property Details
    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,
    
    - Payment Details
    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.payment_method
    
FROM Booking b
INNER JOIN User u 
    ON b.user_id = u.user_id
INNER JOIN Property p 
    ON b.property_id = p.property_id
LEFT JOIN Payment pay 
    ON b.booking_id = pay.booking_id;
