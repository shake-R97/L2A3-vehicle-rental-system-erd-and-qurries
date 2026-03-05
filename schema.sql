-- MY all data for tables

-- users table data

-- users table creation
CREATE TABLE Users (
  user_id serial PRIMARY KEY,
  user_role varchar(20) CHECK (user_role IN ('admin', 'customer')) DEFAULT 'customer',
  user_name varchar(60) NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  password text NOT NULL,
  phone_number varchar(20)
);

-- users data (30 users)
-- users table data insertions
INSERT INTO
  Users (
    user_role,
    user_name,
    email,
    password,
    phone_number
  )
VALUES
  (
    'admin',
    'Abdullah Shake',
    'abdullah.admin@vehirent.com',
    'Admin@123',
    '01710000001'
  ),
  (
    'admin',
    'Juairiya Jaman',
    'juairiya.admin@vehirent.com',
    'Admin@123',
    '01710000002'
  ),
  (
    'admin',
    'Affan Shake',
    'affan.admin@vehirent.com',
    'Admin@123',
    '01710000003'
  ),
  (
    'customer',
    'Arafat Islam',
    'arafat.islam@gmail.com',
    'Cust@123',
    '01810000001'
  ),
  (
    'customer',
    'Sabbir Hossain',
    'sabbir.hossain@gmail.com',
    'Cust@123',
    '01810000002'
  ),
  (
    'customer',
    'Mehedi Hasan',
    'mehedi.hasan@gmail.com',
    'Cust@123',
    '01810000003'
  ),
  (
    'customer',
    'Rakib Chowdhury',
    'rakib.c@gmail.com',
    'Cust@123',
    '01810000004'
  ),
  (
    'customer',
    'Fahim Ahmed',
    'fahim.ahmed@gmail.com',
    'Cust@123',
    '01810000005'
  ),
  (
    'customer',
    'Imran Khan',
    'imran.khan@gmail.com',
    'Cust@123',
    '01810000006'
  ),
  (
    'customer',
    'Sakib Mahmud',
    'sakib.mahmud@gmail.com',
    'Cust@123',
    '01810000007'
  ),
  (
    'customer',
    'Rifat Karim',
    'rifat.karim@gmail.com',
    'Cust@123',
    '01810000008'
  ),
  (
    'customer',
    'Shakil Ahmed',
    'shakil.ahmed@gmail.com',
    'Cust@123',
    '01810000009'
  ),
  (
    'customer',
    'Jannatul Ferdous',
    'jannatul.ferdous@gmail.com',
    'Cust@123',
    '01810000010'
  ),
  (
    'customer',
    'Mim Akter',
    'mim.akter@gmail.com',
    'Cust@123',
    '01810000011'
  ),
  (
    'customer',
    'Tania Sultana',
    'tania.sultana@gmail.com',
    'Cust@123',
    '01810000012'
  ),
  (
    'customer',
    'Sharmin Akhter',
    'sharmin.akhter@gmail.com',
    'Cust@123',
    '01810000013'
  ),
  (
    'customer',
    'Nayeem Hasan',
    'nayeem.hasan@gmail.com',
    'Cust@123',
    '01810000014'
  ),
  (
    'customer',
    'Arman Hossain',
    'arman.hossain@gmail.com',
    'Cust@123',
    '01810000015'
  ),
  (
    'customer',
    'Sadia Rahman',
    'sadia.rahman@gmail.com',
    'Cust@123',
    '01810000016'
  ),
  (
    'customer',
    'Farhan Ali',
    'farhan.ali@gmail.com',
    'Cust@123',
    '01810000017'
  ),
  (
    'customer',
    'Tasnim Ahmed',
    'tasnim.ahmed@gmail.com',
    'Cust@123',
    '01810000018'
  ),
  (
    'customer',
    'Mahin Chowdhury',
    'mahin.c@gmail.com',
    'Cust@123',
    '01810000019'
  ),
  (
    'customer',
    'Rashidul Islam',
    'rashidul.islam@gmail.com',
    'Cust@123',
    '01810000020'
  ),
  (
    'customer',
    'Samia Khan',
    'samia.khan@gmail.com',
    'Cust@123',
    '01810000021'
  ),
  (
    'customer',
    'Omar Faruk',
    'omar.faruk@gmail.com',
    'Cust@123',
    '01810000022'
  ),
  (
    'customer',
    'Nafisa Akter',
    'nafisa.akter@gmail.com',
    'Cust@123',
    '01810000023'
  ),
  (
    'customer',
    'Saif Uddin',
    'saif.uddin@gmail.com',
    'Cust@123',
    '01810000024'
  ),
  (
    'customer',
    'Rumana Yasmin',
    'rumana.yasmin@gmail.com',
    'Cust@123',
    '01810000025'
  ),
  (
    'customer',
    'Habib Ullah',
    'habib.ullah@gmail.com',
    'Cust@123',
    '01810000026'
  ),
  (
    'customer',
    'Dilara Begum',
    'dilara.begum@gmail.com',
    'Cust@123',
    '01810000027'
  );


-- vehicle table creation
CREATE TABLE Vehicles (
  vehicle_id serial PRIMARY KEY,
  vehicle_name varchar(100) NOT NULL,
  vehicle_type varchar(30) NOT NULL,
  registration_number varchar(50) UNIQUE,
  price_per_day decimal(10, 2) NOT NULL,
  availability_status varchar(30) CHECK (
    availability_status IN ('available', 'rented', 'maintenance')
  )
);

-- vehicles tables data insertion 
INSERT INTO
  Vehicles (
    vehicle_name,
    vehicle_type,
    registration_number,
    price_per_day,
    availability_status
  )
VALUES
  -- Sedans
  (
    'Toyota Corolla 2018',
    'Car',
    'DHAKA-D-11-1234',
    3500.00,
    'available'
  ),
  (
    'Honda Civic 2019',
    'Car',
    'DHAKA-D-11-5678',
    4000.00,
    'rented'
  ),
  (
    'Toyota Axio 2017',
    'Car',
    'DHAKA-D-12-2345',
    3200.00,
    'available'
  ),
  (
    'Nissan Sunny 2016',
    'Car',
    'DHAKA-D-12-6789',
    2800.00,
    'maintenance'
  ),
  (
    'Premio G Superior 2020',
    'Car',
    'DHAKA-D-13-1111',
    4500.00,
    'available'
  ),
  (
    'Allion A15 2019',
    'Car',
    'DHAKA-D-13-2222',
    4200.00,
    'rented'
  ),
  -- SUVs
  (
    'Toyota Land Cruiser Prado 2018',
    'SUV',
    'DHAKA-G-21-3333',
    12000.00,
    'available'
  ),
  (
    'Mitsubishi Pajero 2017',
    'SUV',
    'DHAKA-G-21-4444',
    10000.00,
    'rented'
  ),
  (
    'Hyundai Tucson 2021',
    'SUV',
    'DHAKA-G-22-5555',
    8000.00,
    'available'
  ),
  (
    'Kia Sportage 2020',
    'SUV',
    'DHAKA-G-22-6666',
    7500.00,
    'maintenance'
  ),
  (
    'Toyota Harrier 2019',
    'SUV',
    'DHAKA-G-23-7777',
    9000.00,
    'available'
  ),
  -- Microbus / Van
  (
    'Toyota Hiace 2016',
    'Microbus',
    'DHAKA-CHA-31-8888',
    7000.00,
    'available'
  ),
  (
    'Nissan Caravan 2015',
    'Microbus',
    'DHAKA-CHA-31-9999',
    6500.00,
    'rented'
  ),
  (
    'Hyundai H1 2018',
    'Microbus',
    'DHAKA-CHA-32-1212',
    7200.00,
    'available'
  ),
  -- Pickup
  (
    'Toyota Hilux 2019',
    'Pickup',
    'DHAKA-KA-41-2323',
    6000.00,
    'available'
  ),
  (
    'Ford Ranger 2020',
    'Pickup',
    'DHAKA-KA-41-3434',
    6500.00,
    'rented'
  ),
  (
    'Mitsubishi L200 2018',
    'Pickup',
    'DHAKA-KA-42-4545',
    5800.00,
    'maintenance'
  ),
  -- Bikes
  (
    'Yamaha R15 V3',
    'Bike',
    'DHAKA-M-51-5656',
    1200.00,
    'available'
  ),
  (
    'Honda CBR 150R',
    'Bike',
    'DHAKA-M-51-6767',
    1300.00,
    'rented'
  ),
  (
    'Bajaj Pulsar 150',
    'Bike',
    'DHAKA-M-52-7878',
    900.00,
    'available'
  ),
  (
    'TVS Apache RTR 160',
    'Bike',
    'DHAKA-M-52-8989',
    950.00,
    'available'
  ),
  (
    'Suzuki Gixxer 155',
    'Bike',
    'DHAKA-M-53-9090',
    1000.00,
    'maintenance'
  ),
  -- More Cars
  (
    'Toyota Vitz 2015',
    'Car',
    'DHAKA-D-14-1010',
    2500.00,
    'available'
  ),
  (
    'Honda Grace 2018',
    'Car',
    'DHAKA-D-14-2020',
    3300.00,
    'rented'
  ),
  (
    'Mazda Axela 2017',
    'Car',
    'DHAKA-D-15-3030',
    3100.00,
    'available'
  ),
  (
    'Toyota Noah 2018',
    'Microbus',
    'DHAKA-CHA-33-4040',
    6800.00,
    'available'
  ),
  (
    'Suzuki Ertiga 2020',
    'Car',
    'DHAKA-D-15-5050',
    3600.00,
    'rented'
  ),
  (
    'Tesla Model 3 2022',
    'Car',
    'DHAKA-E-16-6060',
    15000.00,
    'available'
  ),
  (
    'BMW X5 2021',
    'SUV',
    'DHAKA-G-24-7070',
    18000.00,
    'maintenance'
  ),
  (
    'Mercedes-Benz C300 2020',
    'Car',
    'DHAKA-D-16-8080',
    20000.00,
    'available'
  );



-- bookings table creation
CREATE TABLE Bookings (
  booking_id serial PRIMARY KEY,
  user_id int REFERENCES Users (user_id),
  vehicle_id int REFERENCES Vehicles (vehicle_id),
  rent_start_date date NOT NULL,
  rent_end_date date NOT NULL,
  booking_status varchar(40) CHECK (
    booking_status IN ('pending', 'confirmed', 'completed', 'cancelled')
  )
);


-- bookings table data insertion
INSERT INTO
  Bookings (
    user_id,
    vehicle_id,
    rent_start_date,
    rent_end_date,
    booking_status
  )
VALUES
  -- Completed bookings (past rentals)
  (4, 2, '2025-01-05', '2025-01-08', 'completed'),
  (5, 6, '2025-01-10', '2025-01-12', 'completed'),
  (6, 8, '2025-01-15', '2025-01-18', 'completed'),
  (7, 13, '2025-01-20', '2025-01-22', 'completed'),
  (8, 16, '2025-02-01', '2025-02-05', 'completed'),
  (9, 19, '2025-02-10', '2025-02-12', 'completed'),
  (10, 25, '2025-02-15', '2025-02-18', 'completed'),
  -- Confirmed (currently rented type vehicles)
  (11, 2, '2025-03-01', '2025-03-05', 'confirmed'),
  (12, 6, '2025-03-02', '2025-03-06', 'confirmed'),
  (13, 8, '2025-03-03', '2025-03-07', 'confirmed'),
  (14, 13, '2025-03-04', '2025-03-06', 'confirmed'),
  (15, 16, '2025-03-01', '2025-03-04', 'confirmed'),
  (16, 19, '2025-03-02', '2025-03-03', 'confirmed'),
  -- Pending bookings
  (17, 1, '2025-03-10', '2025-03-12', 'pending'),
  (18, 3, '2025-03-11', '2025-03-15', 'pending'),
  (19, 7, '2025-03-12', '2025-03-18', 'pending'),
  (20, 9, '2025-03-15', '2025-03-20', 'pending'),
  (21, 11, '2025-03-18', '2025-03-22', 'pending'),
  -- Cancelled
  (22, 4, '2025-02-05', '2025-02-08', 'cancelled'),
  (23, 10, '2025-02-07', '2025-02-10', 'cancelled'),
  (24, 17, '2025-02-10', '2025-02-12', 'cancelled'),
  (25, 23, '2025-02-14', '2025-02-18', 'cancelled'),
  -- More completed 
  (26, 24, '2025-01-25', '2025-01-28', 'completed'),
  (27, 26, '2025-02-03', '2025-02-06', 'completed'),
  (28, 27, '2025-02-08', '2025-02-11', 'completed'),
  (29, 30, '2025-01-12', '2025-01-15', 'completed'),
  (2, 16, '2025-08-08', '2025-09-09', 'completed'),
  -- Admin test booking
  (1, 18, '2025-02-20', '2025-02-22', 'completed');
