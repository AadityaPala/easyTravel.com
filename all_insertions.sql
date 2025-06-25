SET search_path TO test5;

INSERT INTO 
	users (user_id, first_name, last_name, mobile_no, password) 
VALUES 
	(101, 'Nolana', 'Howsan', '+86-499-160-8533', '1234567'),
	(102, 'Willie', 'Terrell', '+84-374-877-8686', 'ADC567'),
	(103, 'Joeann', 'Alphege', '+1-602-628-8779', 'RDG4658'),
	(104, 'Lyda', 'Gillham', '+30-770-109-9894', 'FFYE6475'),
	(105, 'Milty', 'Breznovic', '+62-604-821-8903', 'FEWBF638'),
	(106, 'Myranda', 'Jorin', '+60-324-183-6759', 'BFER7783'),
	(107, 'Arlen', 'Di Batista', '+234-566-381-7037', 'RYVF4785'),
	(108, 'Ozzy', 'Rapport', '+48-372-327-1235', 'FNERIUE46282'),
	(109, 'Stella', 'Peele', '+46-849-505-2099', 'RFRE74645'),
	(110, 'Emlynne', 'Hiddsley', '+86-777-793-0849', 'FRYT46583'),
	(111, 'Alice', 'Wonderland', '+1-555-123-4567', 'RFERB56732'),
    (112, 'Bob', 'Builder', '+44-20-1234-5678', 'FGTY5684');

INSERT INTO 
	user_email (user_id, email_address) 
VALUES 
	(101, 'aabramovic0@fc2.com'),
	(102, 'ynannetti1@rambler.ru'),
	(103, 'scann2@boston.com'),
	(104, 'ehosten3@ning.com'),
	(101, 'wainge4@webnode.com'),
	(102, 'ipitsall5@timesonline.co.uk'),
	(102, 'gcourtman6@wp.com'),
	(105, 'bdavydoch7@wordpress.com'),
	(106, 'prawkesby8@live.com'),
	(107, 'smellor9@shareasale.com'),
	(108, 'kcromleholmea@independent.co.uk'),
	(109, 'bskermerb@techcrunch.com'),
	(110, 'bjaskiewiczc@mayoclinic.com'),
	(103, 'ksawfootd@google.com.hk'),
	(107, 'afairchilde@odnoklassniki.ru'),
	(111, 'alice@example.com'),
    (112, 'bob@example.com');

INSERT INTO 
	location (location_id, city, state, country) 
VALUES
  -- US 
  ('JFK', 'New York', 'New York', 'USA'),
  ('LAX', 'Los Angeles', 'California', 'USA'),
  ('ATL', 'Atlanta', 'Gerogia', 'USA'),
  ('DFW', 'Dallas', 'Texas', 'USA'),
  ('SFO', 'San Francisco', 'California', 'USA'),
  ('SEA', 'Seattle', 'Washington', 'USA'),
  ('MIA', 'Miami', 'Florida', 'USA'),
  ('PHX', 'Phoenix', 'Arizona', 'USA'),
  ('CLT', 'Charlotte', 'North Calorina', 'USA'),
  ('PHL', 'Philadelphia', 'Pennsylvania', 'USA'),
  ('LGA', 'New York', 'New York', 'USA'),
  ('NYC', 'New York', 'New York', 'USA'),
  ('HNL', 'Honolulu', 'Hawaii', 'USA'),
  ('OAK', 'Oakland', 'California', 'USA'),
  ('STL', 'St. Louis', 'Missouri', 'USA'),
  ('CLE', 'Cleveland', 'Ohio', 'USA'),
  ('BWI', 'Baltimore', 'Maryland', 'USA'),
  ('PIT', 'Pittsburgh', 'Pennsylvania', 'USA'),
  ('SDF', 'Louisville', 'Kentucky', 'USA'),
  ('JAX', 'Jacksonville', 'Florida', 'USA'),
  ('MHT', 'Manchester', 'New Hampshire', 'USA'),
  
  -- UK 
  ('LHR', 'London', 'England', 'UK'),
  ('LGW', 'London', 'England', 'UK'),
  ('MAN', 'Manchester', 'England', 'UK'),
  
  -- France 
  ('CDG', 'Paris', 'Ile-de-France', 'France'),
  ('ORY', 'Paris', 'Ile-de-France', 'France'),
  
  -- Italy 
  ('FCO', 'Rome', 'Lazio', 'Italy'),
  ('MXP', 'Milan', 'Lombardy', 'Italy'),
  
  -- Germany 
  ('FRA', 'Frankfurt', 'Hesse', 'Germany'),
  ('MUC', 'Munich', 'Bavaria', 'Germany'),
  
  -- Netherlands, Belgium & Spain
  ('AMS', 'Amsterdam', 'North Holland', 'Netherlands'),
  ('BRU', 'Brussels', 'Brussels', 'Belgium'),
  ('MAD', 'Madrid', 'Community of Madrid', 'Spain'),
  ('BCN', 'Barcelona', 'Catalonia', 'Spain'),
  
  -- Switzerland & Austria
  ('ZRH', 'Zurich', 'Zurich', 'Switzerland'),
  ('VIE', 'Vienna', 'Vienna', 'Austria'),
  
  -- Scandinavia & Ireland
  ('CPH', 'Copenhagen', 'Capital Region', 'Denmark'),
  ('OSL', 'Oslo', 'Oslo', 'Norway'),
  ('ARN', 'Stockholm', 'Stockholm County', 'Sweden'),
  ('HEL', 'Helsinki', 'Uusimaa', 'Finland'),
  ('DUB', 'Dublin', 'Leinster', 'Ireland'),
  
  -- Portugal & Turkey
  ('LIS', 'Lisbon', 'Lisbon', 'Portugal'),
  ('IST', 'Istanbul', 'Istanbul', 'Turkey'),
  
  -- Middle East
  ('DOH', 'Doha', 'Qatar', 'Qatar'),
  ('DXB', 'Dubai', 'Dubai', 'UAE'),
  
  -- India & South Asia
  ('BOM', 'Mumbai', 'Maharashtra', 'India'),
  ('DEL', 'Delhi', 'Delhi', 'India'),
  ('PNQ', 'Pune', 'Maharashtra', 'India'),
  ('JAI', 'Jaipur', 'Rajasthan', 'India'),
  ('LUH', 'Lucknow', 'Uttar Pradesh', 'India'),
  ('NAG', 'Nagpur', 'Maharashtra', 'India'),
  ('IND', 'Indore', 'Madhya Pradesh', 'India'),
  ('BHO', 'Bhopal', 'Madhya Pradesh', 'India'),
  ('PAT', 'Patna', 'Bihar', 'India'),
  ('KAN', 'Kanpur', 'Uttar Pradesh', 'India'),
  ('LUD', 'Ludhiana', 'Punjab', 'India'),
  ('AGR', 'Agra', 'Uttar Pradesh', 'India'),
  ('SRI', 'Srinagar', 'Jammu and Kashmir', 'India'),
  ('AMR', 'Amritsar', 'Punjab', 'India'),
  ('JAB', 'Jabalpur', 'Madhya Pradesh', 'India'),
  ('KOT', 'Kota', 'Rajasthan', 'India'),
  ('GUW', 'Guwahati', 'Assam', 'India'),
  ('MYS', 'Mysore', 'Karnataka', 'India'),
  ('TRI', 'Tiruchirappalli', 'Tamil Nadu', 'India'),
  ('BHU', 'Bhubaneswar', 'Odisha', 'India'),
  ('JAL', 'Jalandhar', 'Punjab', 'India'),
  ('UDA', 'Udaipur', 'Rajasthan', 'India'),

  -- Gujarat
  ('RAJ', 'Rajkot', 'Gujarat', 'India'),
  ('SUR', 'Surat', 'Gujarat', 'India'),
  ('AMD', 'Ahmedabad', 'Gujarat', 'India'),
  ('BRC', 'Vadodra', 'Gujarat', 'India'),
  ('SUNR', 'Surendranagar', 'Gujarat', 'India'),
  ('WKR', 'Wankaner', 'Gujarat', 'India'),
  ('JAM', 'Jamnagar', 'Gujarat', 'India'),
  ('NVS', 'Navsari', 'Gujarat', 'India'),
  ('AKV', 'Ankleshwar', 'Gujarat', 'India'),
  ('VG', 'Viramgam', 'Gujarat', 'India'),
  ('DWK', 'Dwarka', 'Gujarat', 'India'),
  ('VRL', 'Veraval', 'Gujarat', 'India'),
  ('BVC', 'Bhavnagar', 'Gujarat', 'India'),
  ('PBR', 'Porbandar', 'Gujarat', 'India'),
  ('KMBL', 'Kambhaliya', 'Gujarat', 'India'),
  ('DHD', 'Dahod', 'Gujarat', 'India'),
  ('LMD', 'Limbdi', 'Gujarat', 'India'),
  ('CTLH', 'Chotila', 'Gujarat', 'India'),
  ('JND', 'Junagadh', 'Gujarat', 'India'),
  ('KSD', 'Keshod', 'Gujarat', 'India'),
  ('SMNH', 'Somnath', 'Gujarat', 'India'),
  ('GNC', 'Gandhinagar', 'Gujarat', 'India'),
  ('OKHA', 'Okha', 'Gujarat', 'India'),
  
  -- East Asia & Oceania
  ('ICN', 'Seoul', 'Seoul', 'South Korea'),
  ('NRT', 'Tokyo', 'Tokyo', 'Japan'),
  ('HND', 'Tokyo', 'Tokyo', 'Japan'),
  ('SYD', 'Sydney', 'New South Wales', 'Australia'),
  ('MEL', 'Melbourne', 'Victoria', 'Australia'),
  ('AKL', 'Auckland', 'Auckland', 'New Zealand'),
  
  -- Latin America
  ('GRU', 'Sao Paulo', 'Sao Paulo', 'Brazil'),
  ('EZE', 'Buenos Aires', 'Buenos Aires', 'Argentina'),
  ('SCL', 'Santiago', 'Santiago Metropolitan', 'Chile'),
  ('GIG', 'Rio de Janeiro', 'Rio de Janeiro', 'Brazil'),
  ('BOG', 'Bogota', 'Bogota', 'Colombia'),
  ('LIM', 'Lima', 'Lima', 'Peru'),
  ('MEX', 'Mexico City', 'Mexico City', 'Mexico'),
  
  -- Canada
  ('YYZ', 'Toronto', 'Ontario', 'Canada'),
  ('YVR', 'Vancouver', 'British Columbia', 'Canada'),
  ('YWG', 'Winnipeg', 'Manitoba', 'Canada'),
  ('YUL', 'Montreal', 'Quebec', 'Canada'),
  ('YOW', 'Ottawa', 'Ontario', 'Canada'),
  
  -- Africa & Middle East
  ('CAI', 'Cairo', 'Cairo Governorate', 'Egypt'),
  ('JED', 'Jeddah', 'Makkah', 'Saudi Arabia'),
  ('RUH', 'Riyadh', 'Riyadh', 'Saudi Arabia'),
  
  -- Southeast & East Asia
  ('KUL', 'Kuala Lumpur', 'Kuala Lumpur', 'Malaysia'),
  ('SIN', 'Singapore', 'Singapore', 'Singapore'),
  ('BKK', 'Bangkok', 'Bangkok', 'Thailand'),
  ('TPE', 'Taipei', 'Taipei', 'Taiwan'),
  ('HKG', 'Hong Kong', 'Hong Kong', 'Hong Kong'),
  
  -- Japan & China 
  ('KIX', 'Osaka', 'Osaka', 'Japan'),
  ('FUK', 'Fukuoka', 'Fukuoka', 'Japan'),
  ('PEK', 'Beijing', 'Beijing', 'China'),
  ('PVG', 'Shanghai', 'Shanghai', 'China'),
  ('CAN', 'Guangzhou', 'Guangdong', 'China'),
  ('CKG', 'Chongqing', 'Chongqing', 'China'),
  
  -- India
  ('BLR', 'Bangalore', 'Karnataka', 'India'),
  ('MAA', 'Chennai', 'Tamil Nadu', 'India'),
  ('CCU', 'Kolkata', 'West Bengal', 'India'),
  ('HYD', 'Hyderabad', 'Telangana', 'India');

INSERT INTO 
	postal (postal_code, location_id) 
VALUES 
	(123456, 'BRC'),
	(360001, 'RAJ'),
	(360002, 'SUR'),
	(145691, 'AMD'),
	(147598, 'NYC'),
	(349825, 'SUNR'),
	(235691, 'IST'),
	(528672, 'PEK'),
	(245187, 'PHX');

INSERT INTO 
	agency (agency_id, agency_name, agency_email, agency_website, commission_rate) 
VALUES
	(201, 'TravelPro',      'contact@travelpro.com',      'www.travelpro.com',      4.55),
	(202, 'GlobeTrotters',  'info@globetrotters.com',     'www.globetrotters.com',  7.56),
	(203, 'IRCTC',      'support@irctc.com',      'www.irctc.com',      6.67),
	(204, 'JetSetGo',       'hello@jetsetgo.com',         'www.jetsetgo.com',       8),
	(205, 'CityExplorers',  'contact@cityexplorers.com',  'www.cityexplorers.com',  7.84),
	(206, 'HolidayHub',     'info@holidayhub.com',        'www.holidayhub.com',     6.67),
	(207, 'TripMasters',    'support@tripmasters.com',    'www.tripmasters.com',    7.03),
	(208, 'Wanderlust',     'hello@wanderlust.com',       'www.wanderlust.com',     5.9),
	(209, 'JourneyWise',    'contact@journeywise.com',    'www.journeywise.com',    6.8),
	(210, 'ExpeditionX',    'info@expeditionx.com',       'www.expeditionx.com',    7.2),
	(211, 'UrbanTrips',     'info@urbantrips.com',        'www.urbantrips.com',     5.8),
	(212, 'EcoTravel',      'contact@ecotravel.com',      'www.ecotravel.com',      6.03),
	(213, 'RoadRunners',    'support@roadrunners.com',    'www.roadrunners.com',    7.87),
	(214, 'SkyHigh',        'hello@skyhigh.com',          'www.skyhigh.com',        8.09),
	(215, 'GlobalGate',     'info@globalgate.com',        'www.globalgate.com',     7.21);
	
INSERT INTO 
	address (agency_id, postal_code, local_address)
VALUES 
	(201, 123456, '81 Menomonie Trail'),
	(202, 360001, '3 Vera Pass'),
	(203, 360002, '0399 Toban Avenue'),
	(204, 145691, '988 Independence Alley'),
	(205, 147598, '48 Lien Hill'),
	(206, 349825, '41 School Junction'),
	(207, 235691, '3 Warner Pass'),
	(208, 528672, '38 Sloan Terrace'),
	(209, 245187, '4584 High Crossing Point'),
	(210, 123456, '8 Gerald Plaza'),
	(211, 360001, '0 Summer Ridge Pass'),
	(212, 360002, '452 Shelley Pass'),
	(213, 145691, '821 Westerfield Park'),
	(214, 145691, '76 Hermina Lane'),
	(215, 147598, '81570 Butterfield Lane');

INSERT INTO 
	services (service_id, agency_id, service_name) 
VALUES 
	(1, 201, 'bus'),
	(2, 202, 'flight'),
	(3, 203, 'train'),
	(4, 204, 'train'),
	(5, 205, 'bus'),
	(6, 206, 'flight'),
	(7, 207, 'accommodation'),
	(8, 208, 'train'),
	(9, 209, 'bus'),
	(10, 210, 'flight'),
	(11, 211, 'accommodation'),
	(12, 212, 'train'),
	(13, 213, 'bus'),
	(14, 214, 'flight'),
	(15, 215, 'accommodation'),
	(16, 201, 'train'),  
    (17, 202, 'bus'),  
    (18, 203, 'flight');

INSERT INTO 
	bus_stand (location_id, location_name) 
VALUES
	('AMD',  'Ahmedabad Bus Terminal'),
	('RAJ',  'Rajkot Bus Station'),
	('BRC',  'Vadodra Bus Depot'),
	('SUNR',  'Surendranagar Bus Hub'),
	('WKR',  'Wankaner Bus Stop'),
	('JAM',  'Jamnagar Bus Terminal'),
	('SUR',  'Surat Bus Center'),
	('NVS',  'Navsari Bus Station'),
	('AKV',  'Ankleshwar Bus Depot'),
	('VG', 'Viramgam Bus Terminal'),
	('DWK', 'Dwarka Bus Terminal'),
	('VRL', 'Veraval Bus Station'),
	('BVC', 'Bhavnagar Bus Depot'),
	('PBR', 'Porbandar Bus Hub'),
	('KMBL', 'Kambhaliya Bus Terminal'),
	('DHD', 'Dahod Bus Stand'),
	('LMD', 'Limbdi Bus Stop'),
	('CTLH', 'Chotila Bus Stand'),
	('JND', 'Junagadh Bus Stand'),
	('KSD', 'Keshod Bus Stand'),
	('SMNH', 'Somnath Bus Stand'),
	('GNC', 'Gandhinagar Bus Stand');

INSERT INTO 
	train_station (location_id, station_name) 
VALUES
	('BRC',  'Vadodra Central Station'),
	('AMD',  'Ahmedabad Train Depot'),
	('VG',  'Viramgam Station'),
	('SUNR',  'Surendranagar Train Station'),
	('RAJ', 'Rajkot Central Station'),
	('SUR', 'Surat Station'),
	('JAM', 'Jamnagar Station'),
	('WKR', 'Wankaner Junction'),
	('VRL', 'Veraval Station'),
	('DWK', 'Dwarka'),
	('OKHA', 'Okha Junction');

INSERT INTO 
	Airport (location_id, airport_name) 
VALUES 
	('JFK', 'John F. Kennedy Airport'),
	('LAX', 'Los Angeles International Airport'),
	('LHR', 'Heathrow Airport'),
	('CDG', 'Paris Charles De Gaulle Airport'),
	('FRA', 'Frankfurt Airport'),
	('FCO', 'Leonardo Da Vinci International Airport'),
	('MAD', 'Adolfo Suarez Madrid-Barajas Airport'),
	('ZRH', 'Zurich Airport'),
	('PHX', 'Phoneix International Airport'),
	('DUB', 'Dublin Airport'),
	('SFO', 'San Francisco International Airport'),
	('MAN', 'Manchester Airport'),
	('LGW', 'London Gatwick Airport');

INSERT INTO 
	bus_info(bus_id, service_id) 
VALUES
	('GJ9Z1234', 1),
	('GJ18Z8843', 5),
	('GJ18Z9013', 9),
	('GJ18Z9610', 13),
	('GJ18Z9999', 1), 
    ('GJ18Z8888', 17);

INSERT INTO
	train_info(train_id, service_id)
VALUES
	('22959', 3),
	('22925', 3),
	('22960', 16),
    ('22926', 3);

INSERT INTO
	Flight_Info (flight_code, service_id)
VALUES 
	('EK1320', 2),
	('UA9999', 6),
	('EK1321', 2),  
    ('UA1000', 18);

INSERT INTO 
	bus (bus_id, stand_id, trip_code, departure_time, arrival_time, day)
VALUES 
	('GJ9Z1234', 'AMD', '1201AHDDHDEXP51', '17:05', '17:00', 1),
	('GJ9Z1234', 'DHD', '1201AHDDHDEXP51', '21:00', '21:00', 1),
	('GJ18Z8843', 'AMD', '0035AMDKSDEXP51', '00:35', '00:00', 1),
	('GJ18Z8843', 'LMD', '0035AMDKSDEXP51', '02:35', '02:30', 1),
	('GJ18Z8843', 'CTLH', '0035AMDKSDEXP51', '03:52', '03:47', 1),
	('GJ18Z8843', 'RAJ', '0035AMDKSDEXP51', '05:30', '04:45', 1),
	('GJ18Z8843', 'JND', '0035AMDKSDEXP51', '07:15', '07:10', 1),
	('GJ18Z8843', 'KSD', '0035AMDKSDEXP51', '09:25', '09:25', 1),
	('GJ18Z9013', 'SUR', '1251SRTSMNHEXP61', '14:05', '14:00', 1),
	('GJ18Z9013', 'BRC', '1251SRTSMNHEXP61', '17:10', '17:00', 1),
	('GJ18Z9013', 'RAJ', '1251SRTSMNHEXP61', '23:10', '23:00', 1),
	('GJ18Z9013', 'JND', '1251SRTSMNHEXP61', '03:10', '03:00', 2),
	('GJ18Z9013', 'KSD', '1251SRTSMNHEXP61', '04:10', '04:00', 2),
	('GJ18Z9013', 'VRL', '1251SRTSMNHEXP61', '05:10', '05:00', 2),
	('GJ18Z9013', 'SMNH', '1251SRTSMNHEXP61', '06:00', '06:00', 2),
	('GJ18Z9610', 'GNC', '1261GNCBVN52', '12:30', '15:00', 1),
	('GJ18Z9610', 'BVC', '1261GNCBVN52', '16:40', '16:40', 1),
	('GJ18Z9999', 'AMD', '1202AHDDHDEXP52', '18:00', '18:00', 1),
    ('GJ18Z9999', 'DHD', '1202AHDDHDEXP52', '22:00', '22:00', 1),
    ('GJ18Z8888', 'SUR', '1252SRTSMNHEXP62', '15:00', '15:00', 1),
    ('GJ18Z8888', 'BRC', '1252SRTSMNHEXP62', '18:00', '18:00', 1),
    ('GJ18Z8888', 'RAJ', '1252SRTSMNHEXP62', '00:00', '00:00', 2);

INSERT INTO 
	train (train_id, station_id, trip_code, arrival_time, departure_time, day) 
VALUES
	('22959', 'BRC', 'BRCJAMEXP500', '00:00', '15:50', 1),
	('22959', 'AMD', 'BRCJAMEXP500', '17:30', '17:35', 1),
	('22959', 'VG', 'BRCJAMEXP500', '18:48', '18:50', 1),
	('22959', 'SUNR', 'BRCJAMEXP500', '19:54', '19:56', 1),
	('22959', 'WKR', 'BRCJAMEXP500', '20:56', '20:58', 1),
	('22959', 'RAJ', 'BRCJAMEXP500', '21:44', '21:49', 1),
	('22959', 'JAM', 'BRCJAMEXP500', '23:30', '00:00', 1),
	
	('22925', 'AMD', 'AMDOKHAVNDE450', '18:00', '18:10', 1),
	('22925', 'VG', 'AMDOKHAVNDE450', '19:05', '19:07', 1),
	('22925', 'SUNR', 'AMDOKHAVNDE450', '19:43', '19:45', 1),
	('22925', 'WKR', 'AMDOKHAVNDE450', '20:31', '20:33', 1),
	('22925', 'RAJ', 'AMDOKHAVNDE450', '21:03', '21:08', 1),
	('22925', 'JAM', 'AMDOKHAVNDE450', '22:25', '22:30', 1),
	('22925', 'DWK', 'AMDOKHAVNDE450', '23:54', '23:59', 1),
	('22925', 'OKHA', 'AMDOKHAVNDE450', '00:40', '00:40', 2),

	('22960', 'BRC', 'BRCJAMEXP501', '16:00', '16:05', 1),
    ('22960', 'AMD', 'BRCJAMEXP501', '17:45', '17:50', 1),
    ('22960', 'RAJ', 'BRCJAMEXP501', '22:00', '22:05', 1),
    ('22960', 'JAM', 'BRCJAMEXP501', '23:45', '23:45', 1),
    ('22926', 'AMD', 'AMDOKHAVNDE451', '19:00', '19:10', 1),
    ('22926', 'RAJ', 'AMDOKHAVNDE451', '22:03', '22:08', 1),
    ('22926', 'OKHA', 'AMDOKHAVNDE451', '01:40', '01:40', 2);

INSERT INTO 
	Flight (flight_code, airport_code, departure_time, arrival_time, day, trip_code)
VALUES
  ('EK1320', 'PHX', '06:00', '08:00', 1, 'ABC123'),
  ('EK1320', 'JFK', '08:45', '10:30', 1, 'ABC123'),
  ('EK1320', 'LAX', '13:45', '15:30', 1, 'ABC123'),
  ('EK1320', 'SFO', '16:15', '18:00', 1, 'ABC123'),
  ('UA9999', 'LHR', '07:00', '08:00', 1, 'XYZ789'),
  ('UA9999', 'LGW', '08:30', '09:15', 1, 'XYZ789'),
  ('UA9999', 'MAN', '09:45', '11:00', 1, 'XYZ789'),
  ('UA9999', 'CDG', '11:30', '13:00', 1, 'XYZ789'),
  ('UA9999', 'DUB', '13:30', '15:00', 1, 'XYZ789'),
  ('EK1321', 'PHX', '07:00', '09:00', 1, 'ABC124'),
  ('EK1321', 'JFK', '09:45', '11:30', 1, 'ABC124'),
  ('EK1321', 'LAX', '14:45', '16:30', 1, 'ABC124'),
  ('UA1000', 'LHR', '08:00', '09:00', 1, 'XYZ790'),
  ('UA1000', 'DUB', '14:30', '16:00', 1, 'XYZ790');

INSERT INTO 
	bus_class(bus_class_id, bus_id, capacity, price, currency) 
VALUES
	('EXP', 'GJ9Z1234', 55, 200, 'rupees'),
	('EXP', 'GJ18Z8843', 55, 264, 'rupees'),
	('SLP', 'GJ18Z9013', 55, 700, 'rupees'),
	('EXP', 'GJ18Z9610', 55, 230, 'rupees');

INSERT INTO 
	Flight_Class (flight_class_id, flight_code, capacity, price, currency) 
VALUES 
	('Economy', 'EK1320', 100, 160, 'Won'),
	('Business', 'EK1320', 140, 600, 'Rupiah'),
	('Business', 'UA9999', 120, 470, 'Euro'),
	('Economy', 'UA9999', 300, 100, 'Rupiah');

INSERT INTO
	train_class (train_class_id, train_id, capacity, price, currency)
VALUES
	('3AC', '22959', 100, 749.59, 'Rupees'),
	('GEN', '22959', 200, 136.8, 'Rupees'),
	('SL', '22959', 150, 245.8, 'Rupees'),
	('2AC', '22925', 100, 545.8, 'Rupees'),
	('1AC', '22925', 100, 445.8, 'Rupees');

INSERT INTO 
	room_class (room_class_id, class_name, price, currency)
VALUES
  ('RC001', 'Standard Room', 99.99, 'USD'),
  ('RC002', 'Deluxe Room', 149.99, 'USD'),
  ('RC003', 'Superior Room', 129.99, 'USD'),
  ('RC004', 'Executive Suite', 249.99, 'USD'),
  ('RC005', 'Presidential Suite', 399.99, 'USD'),
  ('RC006', 'Economy Room', 79.99, 'USD'),
  ('RC007', 'Family Room', 159.99, 'USD'),
  ('RC008', 'Single Room', 89.99, 'USD'),
  ('RC009', 'Double Room', 109.99, 'USD'),
  ('RC010', 'Penthouse Suite', 499.99, 'USD');
  
INSERT INTO 
	room (room_id, room_class_id, status, service_id, location_id) 
VALUES 
	('F101', 'RC001', 'vacant', 3, 'MIA'),
	('D305', 'RC002', 'occupied', 7, 'PHX'),
	('A209', 'RC003', 'occupied', 11, 'CLT'),
	('C504', 'RC004', 'vacant', 15, 'AMD'),
	('A902', 'RC005', 'occupied', 3, 'HNL'),
	('G123', 'RC006', 'occupied', 7, 'OAK'),
	('S512', 'RC007', 'occupied', 11, 'JAX'),
	('D190', 'RC008', 'vacant', 15, 'MHT'),
	('E211', 'RC009', 'vacant', 3, 'MAN'),
	('F504', 'RC010', 'occupied', 7, 'FRA'),
	('F912', 'RC002', 'occupied', 11, 'ZRH'),
	('R315', 'RC008', 'vacant', 15, 'CPH'),
	('C111', 'RC010', 'vacant', 3, 'IST'),
	('L267', 'RC005', 'occupied', 7, 'DOH'),
	('K123', 'RC001', 'occupied', 11, 'AMD'),
	('R101', 'RC001', 'vacant', 7, 'AMD'),
    ('R102', 'RC002', 'vacant', 7, 'PHX'),
    ('R103', 'RC003', 'vacant', 11, 'MIA'),
    ('R104', 'RC004', 'vacant', 15, 'LAX');

INSERT INTO 
	payments ( payment_id,  user_id,  payment_method, payment_date, status) 
VALUES 
	(501, 101, 'Pound', '2024-12-25', 'pending'),
	(502, 102, 'Pound', '2024-12-22', 'paid'),
	(503, 103, 'Rupiah', '2025-03-10', 'paid'),
	(504, 104, 'Yuan Renminbi', '2024-10-26', 'paid'),
	(505, 105, 'Euro', '2025-02-09', 'pending'),
	(506, 106, 'Baht', '2025-01-22', 'pending'),
	(507, 107, 'Koruna', '2024-11-28', 'paid'),
	(508, 108, 'Peso', '2024-11-19', 'pending'),
	(509, 109, 'Tugrik', '2024-10-03', 'pending'),
	(510, 110, 'Zloty', '2024-11-02', 'paid'),
	(511, 105, 'Yuan Renminbi', '2025-03-18', 'paid'),
	(512, 101, 'Krona', '2025-01-24', 'paid'),
	(513, 105, 'Euro', '2024-12-20', 'pending'),
	(514, 110, 'Hryvnia', '2025-01-27','pending'),
	(515, 102, 'Peso', '2025-03-12', 'paid'),
	(516, 105, 'Credit Card', '2024-10-01', 'paid'),
    (517, 106, 'Debit Card', '2024-10-02', 'paid'),
    (518, 107, 'Net Banking', '2024-10-03', 'pending'),
    (519, 108, 'Credit Card', '2024-10-04', 'paid'),
    (520, 109, 'Debit Card', '2024-10-05', 'paid'),
    (521, 110, 'Net Banking', '2024-10-06', 'pending'),
    (522, 111, 'Credit Card', '2024-10-10', 'paid'),
    (523, 112, 'Debit Card', '2024-10-12', 'pending'),
	(524, 101, 'Credit Card', '2024-10-07', 'paid'),
    (525, 102, 'Debit Card', '2024-10-08', 'paid'),
    (526, 111, 'Credit Card', '2024-10-11', 'paid');

INSERT INTO 
	bookings (booking_id, user_id, payment_id, booking_date, total_amount) 
VALUES 
	(1, 101, 501, '2024-12-28', 150.00),
	(2, 102, 502, '2024-04-22', 220.00),
	(3, 103, 503, '2024-06-19', 13600.8),
	(4, 104, 504, '2025-01-04', 18000.00),
	(5, 105, 516, '2024-10-01', 264.00),
    (6, 106, 517, '2024-10-02', 749.59), 
    (7, 107, 518, '2024-10-03', 16000.00), 
    (8, 108, 519, '2024-10-04', 700.00), 
    (9, 109, 520, '2024-10-05', 545.8),
    (10, 110, 521, '2024-10-06', 15499.00), 
    (11, 111, 522, '2024-10-10', 20000.00), 
    (12, 112, 523, '2024-10-12', 136.80),
	(13, 101, 524, '2024-10-07', 199.98), 
    (14, 102, 525, '2024-10-08', 299.97),
    (15, 111, 526, '2024-10-11', 99.99);

INSERT INTO 
  accommodation_booking (booking_id, service_id, location_id, check_in_date, check_out_date, head_count)
VALUES 
  (1, 1, 'MIA', '2025-04-04', '2024-11-13', 2),
  (2, 2, 'PHX', '2024-07-07', '2024-05-27', 3),
  (13, 7, 'AMD', '2024-11-10', '2024-11-12', 2), 
  (14, 7, 'PHX', '2024-11-15', '2024-11-17', 3),  
  (15, 15, 'LAX', '2024-12-02', '2024-12-04', 1);

INSERT INTO 
	room_booking (room_id, booking_id, service_id) 
VALUES 
	('F101', 1, 3),
	('D305', 2, 7),
	('A209', 1, 11),
	('C504', 2, 15),
	('K123', 1, 11),
	('R101', 13, 7),
    ('R102', 14, 7),
    ('R104', 15, 15);

INSERT INTO 
	transport_booking(booking_id, service_id, departure_location_id, arrival_location_id, journey_date, ticket_no, seat_no)
VALUES
  (3, 2, 'PHX', 'SFO', '2025-04-09', 'TCKT008', '12A'),
  (4, 2, 'LHR', 'DUB', '2025-05-16', 'TCKT009', '14C'),
  (5, 1, 'AMD', 'DHD', '2024-11-01', 'TCKT010', '15B'),   
  (6, 3, 'BRC', 'JAM', '2024-11-02', 'TCKT011', '20A'),   
  (7, 2, 'PHX', 'LAX', '2024-11-03', 'TCKT012', '25C'),   
  (8, 17, 'SUR', 'RAJ', '2024-11-04', 'TCKT013', '30D'), 
  (9, 16, 'AMD', 'RAJ', '2024-11-05', 'TCKT014', '35E'),  
  (10, 18, 'LHR', 'DUB', '2024-11-06', 'TCKT015', '40F'),
  (11, 2, 'JFK', 'LAX', '2024-12-01', 'TCKT016', '10A'),  
  (12, 3, 'AMD', 'RAJ', '2024-12-05', 'TCKT017', '5B');