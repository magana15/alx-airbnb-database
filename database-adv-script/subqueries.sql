SELECT
  p.property_id,
  p.name AS property_name,
  p.location,
  p.pricepernight
FROM properties p
WHERE p.property_id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
)
ORDER BY p.name;

#=========correlated subquery==========

SELECT 
    u.user_id,
    u.first_name,
    u.last_name
FROM users u
WHERE (
    SELECT COUNT(*) 
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;


