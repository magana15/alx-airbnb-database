some of the queries used.

EXPLAIN ANALYZE
SELECT 
    p.property_id, p.name, AVG(r.rating) AS avg_rating
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id
WHERE p.location = 'Nairobi'
GROUP BY p.property_id
HAVING avg_rating > 4.0;


after implementing the queries i found out that new index on propererty_id could go a long way in improving the performance.
The indexes iproved the performance significantly.
