SET search_path TO test5;

-- 1) Agencies who are generating the highest revenues
SELECT 
    a.agency_id, 
    a.agency_name, 
    ROUND((COALESCE(SUM(combined.total_amount), 0))::numeric, 2) AS total_revenue
FROM 
    agency a
LEFT JOIN 
    services s ON a.agency_id = s.agency_id
LEFT JOIN (
    SELECT 
		tb.service_id, b.total_amount 
    FROM 
		transport_booking tb 
    JOIN 
		bookings b ON tb.booking_id = b.booking_id

    UNION ALL

    SELECT 
		ab.service_id, b.total_amount 
    FROM 
		accommodation_booking ab 
    JOIN 
		bookings b ON ab.booking_id = b.booking_id
) AS combined ON s.service_id = combined.service_id
GROUP BY 
    a.agency_id, a.agency_name
ORDER BY total_revenue DESC 
LIMIT 5;

-- 2) Commission earned from each agency
SELECT 
    a.agency_id, 
    a.agency_name, 
    ROUND((COALESCE(SUM(combined.total_amount) * (a.commission_rate / 100), 0))::numeric, 2) AS total_commission
FROM 
    agency a
LEFT JOIN 
    services s ON a.agency_id = s.agency_id
LEFT JOIN (
    SELECT 
		tb.service_id, b.total_amount 
    FROM 
		transport_booking tb 
    JOIN 
		bookings b ON tb.booking_id = b.booking_id
	
    UNION ALL
	
    SELECT 
		ab.service_id, b.total_amount 
    FROM 
		accommodation_booking ab 
    JOIN 
		bookings b ON ab.booking_id = b.booking_id
) AS combined ON s.service_id = combined.service_id
GROUP BY 
    a.agency_id, a.agency_name, a.commission_rate
HAVING 
    SUM(combined.total_amount) > 0
ORDER BY total_commission DESC;

-- 3) number of monthly bookings of all services
WITH all_bookings AS (
    SELECT 
        DATE_TRUNC('month', tb.journey_date) AS month, 
        s.service_name AS type
    FROM 
        transport_booking tb
    JOIN 
        services s ON tb.service_id = s.service_id

    UNION ALL

    SELECT 
        DATE_TRUNC('month', ab.check_in_date), 
        'hotel' AS type
    FROM 
        accommodation_booking ab
)
SELECT 
    TO_CHAR(month, 'YYYY-MM') AS booking_month,
    COUNT(*) FILTER (WHERE type = 'flight') AS flight_bookings,
    COUNT(*) FILTER (WHERE type = 'train') AS train_bookings,
    COUNT(*) FILTER (WHERE type = 'bus') AS bus_bookings,
    COUNT(*) FILTER (WHERE type = 'hotel') AS hotel_bookings
FROM 
    all_bookings
GROUP BY month
ORDER BY month;

-- 4) transport booking details of all users
SELECT 
    u.first_name || ' ' || u.last_name AS user_name,
    b.booking_id,
    tb.journey_date,
    dl.city AS from_city,
    al.city AS to_city,
    b.total_amount, 
    tb.ticket_no,
    s.service_name,
    ag.agency_name
FROM 
    users u
JOIN 
    bookings b ON u.user_id = b.user_id
JOIN 
    transport_booking tb ON b.booking_id = tb.booking_id
JOIN 
    services s ON tb.service_id = s.service_id
JOIN 
    agency ag ON s.agency_id = ag.agency_id
JOIN 	
    location dl ON tb.departure_location_id = dl.location_id
JOIN 
    location al ON tb.arrival_location_id = al.location_id;

-- 5) users with highest money spent on services
SELECT 
    user_id, 
    COUNT(booking_id) AS total_booking,
    SUM(total_amount) AS total_money_spent
FROM 
    bookings
GROUP BY 
    user_id
ORDER BY 
    total_money_spent DESC;

-- 6) Find top 3 locations with highest number of accommodation bookings
SELECT 
	ab.location_id, l.city, l.country, COUNT(*) as booking_count
FROM 
	accommodation_booking ab
JOIN 
	location l ON ab.location_id = l.location_id
GROUP BY ab.location_id, l.city, l.country
ORDER BY booking_count DESC
LIMIT 3;


-- 7) month with highest number of transport_bookings
SELECT 
    TO_CHAR(journey_date, 'MM') AS booking_month,
    COUNT(*) AS total_bookings
FROM 
    transport_booking
GROUP BY 
    booking_month
ORDER BY 
    total_bookings DESC;

-- 8) Users who have booked flights with price higher than avg price
WITH avg_flight_price AS (
    SELECT AVG(price) AS avg_price 
    FROM flight_class
)
SELECT DISTINCT 
    u.user_id, 
    u.first_name || ' ' || u.last_name AS name,
    b.total_amount
FROM 
    users u
JOIN 
    bookings b ON u.user_id = b.user_id
JOIN 
    transport_booking tb ON b.booking_id = tb.booking_id
JOIN 
    flight_info fi ON tb.service_id = fi.service_id
CROSS JOIN 
    avg_flight_price afp
WHERE 
    b.total_amount > afp.avg_price;

-- 9) Query to find services from cityA to cityB
SELECT 
    transport_id,
    transport_type,
    departure_time,
    arrival_time,
    departure_day,
    arrival_day
FROM (
    -- Bus Routes
    SELECT 
        t1.bus_id AS transport_id,
        'bus' AS transport_type,
        t1.departure_time,
        t2.arrival_time,
        t1.day AS departure_day,
        t2.day AS arrival_day
    FROM 
        bus t1
    JOIN bus t2 
        ON t1.bus_id = t2.bus_id 
       AND t1.trip_code = t2.trip_code
    WHERE 
        t1.stand_id = 'AMD' 
        AND t2.stand_id = 'RAJ'
        AND (t1.day < t2.day OR t1.departure_time < t2.arrival_time)

    UNION ALL

    -- Train Routes
    SELECT 
        t1.train_id AS transport_id,
        'train' AS transport_type,
        t1.departure_time,
        t2.arrival_time,
        t1.day AS departure_day,
        t2.day AS arrival_day
    FROM 
        train t1
    JOIN train t2 
        ON t1.train_id = t2.train_id 
       AND t1.trip_code = t2.trip_code
    WHERE 
        t1.station_id = 'AMD' 
        AND t2.station_id = 'RAJ'
        AND (t1.day < t2.day OR t1.departure_time < t2.arrival_time)

    UNION ALL

    -- Flight Routes
    SELECT 
        t1.flight_code AS transport_id,
        'flight' AS transport_type,
        t1.departure_time,
        t2.arrival_time,
        t1.day AS departure_day,
        t2.day AS arrival_day
    FROM 
        flight t1
    JOIN flight t2 
        ON t1.flight_code = t2.flight_code 
       AND t1.trip_code = t2.trip_code
    WHERE 
        t1.airport_code = 'AMD' 
        AND t2.airport_code = 'RAJ'
        AND (t1.day < t2.day OR t1.departure_time < t2.arrival_time)
) AS combined_transport;

-- 10) find full route of bus/train/flight with given id
SELECT
	*
FROM
	train
WHERE train_id = '22959'
ORDER BY day ASC, arrival_time ASC;

-- 11) locations of agencies
SELECT DISTINCT
  a.agency_name, 
  a.agency_email, 
  a.agency_website, 
  p.postal_code, 
  ad.local_address, 
  l.city, 
  l.country
FROM agency a
JOIN address ad ON a.agency_id = ad.agency_id
JOIN postal p ON ad.postal_code = p.postal_code
JOIN location l ON p.location_id = l.location_id;

-- 12) Cheapest trip between two locations
SELECT 
    service_type,
    MIN(price) AS cheapest_price,
    currency
FROM (
  
    SELECT 
        'bus' AS service_type,
        bc.price,
        bc.currency
    FROM 
        bus_class bc
    JOIN 
		bus_info bi ON bc.bus_id = bi.bus_id
    JOIN 
		bus b1 ON bi.bus_id = b1.bus_id
    JOIN 
		bus b2 ON b1.trip_code = b2.trip_code
    WHERE 
        b1.stand_id = 'AMD'
        AND b2.stand_id = 'RAJ'
        AND (b1.day < b2.day OR (b1.day = b2.day AND b1.departure_time < b2.arrival_time))

    UNION ALL

    SELECT 
        'train' AS service_type,
        tc.price,
        tc.currency
    FROM 
        train_class tc
    JOIN 
		train_info ti ON tc.train_id = ti.train_id
    JOIN 
		train t1 ON ti.train_id = t1.train_id
    JOIN 
		train t2 ON t1.trip_code = t2.trip_code
    WHERE 
        t1.station_id = 'AMD'
        AND t2.station_id = 'RAJ'
        AND (t1.day < t2.day OR (t1.day = t2.day AND t1.departure_time < t2.arrival_time))

    UNION ALL

    SELECT 
        'flight' AS service_type,
        fc.price,
        fc.currency
    FROM 
        flight_class fc
    JOIN 
		flight_info fi ON fc.flight_code = fi.flight_code
    JOIN 
		flight f1 ON fi.flight_code = f1.flight_code
    JOIN 
		flight f2 ON f1.trip_code = f2.trip_code
    WHERE 
        f1.airport_code = 'AMD'
        AND f2.airport_code = 'RAJ'
        AND (f1.day < f2.day OR (f1.day = f2.day AND f1.departure_time < f2.arrival_time))
		
) AS all_services
GROUP BY service_type, currency
ORDER BY cheapest_price;