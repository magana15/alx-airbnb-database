#=======INNER=JOIN===============
SELECT
  b.booking_id,
  b.property_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email
FROM bookings AS b
INNER JOIN users AS u
  ON b.user_id = u.user_id
ORDER BY b.start_date DESC;

#==================LEFT==JOIN===========

SELECT
  p.property_id,
  p.name AS property_name,
  p.location,
  p.pricepernight,
  r.review_id,
  r.rating,
  r.comment,
  r.created_at AS review_date
FROM properties AS p
LEFT JOIN reviews AS r
  ON p.property_id = r.property_id
ORDER BY p.name;

#==============FULL==OUTER=JOIN============

SELECT
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,
  b.booking_id,
  b.property_id,
  b.start_date,
  b.end_date,
  b.status
FROM users AS u
FULL OUTER JOIN bookings AS b
  ON u.user_id = b.user_id
ORDER BY u.user_id;
