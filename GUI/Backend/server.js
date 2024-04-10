const express = require('express')
const mssql = require('mssql')
const cors = require('cors')

const app = express()
app.use(express.json());
app.use(cors())

// Configuration for MSSQL connection
const config = {
    user: 'sa',
    password: 'Password@123',
    server: 'localhost',
    database: 'RideSharingApp', // Replace 'your_database_name' with your actual database name
    options: {
        encrypt: true, // If you are using Windows Azure
        trustServerCertificate: true // If you are using Windows Azure
    }
};

// Create a pool of connections
const pool = new mssql.ConnectionPool(config);
const poolConnect = pool.connect();

poolConnect.then(pool => {
    console.log('Connected to MSSQL database');
}).catch(err => {
    console.error('Database connection failed: ', err);
});

// API endpoint to fetch user data
app.get('/users', async (req, res) => {
    try {
        // Connect to the database
        await mssql.connect(config);

        // Query the database to get user data
        const result = await mssql.query`
            SELECT UserID, Email, FirstName, LastName FROM [USER]
        `;

        // Send the user data as JSON response
        res.json(result.recordset);
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ success: false, message: 'Internal server error' });
    } finally {
        // Close the database connection
        await mssql.close();
    }
});

// API endpoint to handle joining an existing trip
app.post('/joinTrip', async (req, res) => {
    const { PassengerID, TripID } = req.body;
    console.log("Pass:- " + PassengerID)
    console.log("Trip:- "+TripID)

    try {
        // Connect to the database
        const pool = await mssql.connect(config);

        // Call the stored procedure
        const result = await mssql.query`
            EXEC JoinExistingTrip 
            @PassengerID = ${PassengerID},
            @ExistingTripID = ${TripID}
        `;

        // Close the database connection
        await pool.close();

        // Send a success response
        res.status(200).json({ success: true, message: 'Joined trip successfully' });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ success: false, message: 'Failed to join trip' });
    }
});


// API endpoint to handle fetching all trips
app.post('/displayAllTrips', async (req, res) => {
    const { PassengerID, TripType, CarType, StartStreet, StartCity, DropStreet, DropCity } = req.body;

    try {
        // Connect to the database
        const pool = await mssql.connect(config);

        // Call the stored procedure
        const result = await mssql.query`
            EXEC DisplayOngoingTrips 
            @PassengerID = ${PassengerID},
            @TripType = ${TripType},
            @CarType = ${CarType},
            @StartStreet = ${StartStreet},
            @StartCity = ${StartCity},
            @DropStreet = ${DropStreet},
            @DropCity = ${DropCity}
        `;

        // Close the database connection
        await pool.close();

        // Send the result as JSON
        res.status(200).json(result.recordset);
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ success: false, message: 'Failed to fetch trips' });
    }
});

// GET endpoint to fetch all users
app.get('/getAllUsers', async (req, res) => {
    try {
      // Connect to the database
      await mssql.connect(config);
  
      // Query to fetch all users
      const result = await mssql.query`SELECT * FROM [user]`; 
  
      // Send the fetched data as JSON response
      res.json(result.recordset);
    } catch (err) {
      console.error('Error fetching users:', err);
      res.status(500).json({ error: 'Internal server error' });
    } 
  });

// Route to get user details
app.post('/getUserDetail', async (req, res) => {
    try {
      // Connect to the database
      await mssql.connect(config);
      
      // Assuming the email is sent in the body of the request
      const { email } = req.body;
  
      // Replace 'YourTableName' with the actual name of your table
      // Replace 'firstName', 'lastName', 'role' with actual column names
      const result = await mssql.query`SELECT FirstName, LastName FROM [USER] WHERE Email = ${email}`;
  
      if (result.recordset.length > 0) {
        // Send the first matching user
        res.json(result.recordset[0]);
      } else {
        res.status(404).send('User not found');
      }
    } catch (err) {
      console.error('Database query failed', err);
      res.status(500).send('Internal Server Error');
    }
  });

// Endpoint to retrieve distinct car types
app.get('/getCarType', async (req, res) => {
    try {
        // Connect to the database
        await mssql.connect(config);

        // Query to retrieve distinct car types
        const result = await mssql.query`SELECT DISTINCT CarType FROM CAR`;

        // Extract car types from the result
        const carTypes = result.recordset.map((row) => row.CarType);

        // Send the response with car types
        res.json(carTypes);
    } catch (error) {
        // Handle errors
        console.error('Error:', error.message);
        res.status(500).json({ error: 'Internal Server Error' });
    } 
});


  // Endpoint to handle GET request for retrieving passenger ID
app.get('/getPassangerID', async (req, res) => {
    try {
      // Extract firstName and lastName from query parameters
      const { firstName, lastName } = req.query;
      
      // Create a new SQL Server connection pool
      await mssql.connect(config);
  
      // Query to retrieve passenger ID based on firstName and lastName
      const result = await mssql.query`SELECT PassengerID 
      FROM PASSENGER
      WHERE UserID = (
        SELECT UserID
        FROM [USER]
        WHERE FirstName = ${firstName}
         AND LastName = ${lastName})`;
      
      // If a passenger with the given name exists, return the PassengerID
      if (result.recordset.length > 0) {
        const passengerID = result.recordset[0].PassengerID;
        res.json({ passengerID });
      } else {
        res.status(404).json({ error: 'Passenger not found' });
      }
    } catch (error) {
      console.error('Error:', error);
      res.status(500).json({ error: 'Internal server error' });
    }
  });

// API endpoint for user authentication
app.post('/login', async (req, res) => {
    const { email } = req.body;

    try {
        // Connect to the database
        await mssql.connect(config);

        // Query the database to check if the email exists
        console.log(`Email is :- ${email}`)
        const result = await mssql.query`
            SELECT * FROM [USER] WHERE Email = ${email}
        `;

        // If a user with the provided email exists
        if (result.recordset.length > 0) {
            res.status(200).json({ success: true, message: 'Login successful' });
        } else {
            res.status(401).json({ success: false, message: 'Email not found' });
        }
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ success: false, message: 'Internal server error' });
    } finally {
        // Close the database connection
        await mssql.close();
    }
});

// Route to fetch locations
app.get('/locations', async (req, res) => {
    try {
      // Connect to the MSSQL database
      await mssql.connect(config);
  
      // Query to fetch locations
      const result = await mssql.query`SELECT DISTINCT City, Street FROM LOCATIONS`;
  
      // Close the MSSQL connection
      await mssql.close();
  
      // Extract the locations from the query result
      const locations = result.recordset;
  
      // Send the locations as JSON response
      res.json(locations);
    } catch (error) {
      console.error('Error fetching locations:', error);
      res.status(500).send('Internal Server Error');
    }
  });

 // Fetch cities
app.get('/cities', async (req, res) => {
    try {
      await mssql.connect(config);
      const result = await mssql.query('SELECT DISTINCT City FROM LOCATIONS');
      const cities = result.recordset.map(row => row.City);
      res.json(cities);
    } catch (error) {
      console.error('Error fetching cities:', error);
      res.status(500).send('Internal Server Error');
    } finally {
      await mssql.close();
    }
  });
  
  app.get('/streets', async (req, res) => {
    const { city } = req.query;
    if (!city) {
      return res.status(400).send('City parameter is required');
    }
  
    try {
      await mssql.connect(config);
      const result = await mssql.query`SELECT Street FROM LOCATIONS WHERE City = ${city}`;
      const streets = result.recordset.map(row => row.Street);
      res.json(streets);
    } catch (error) {
      console.error('Error fetching streets:', error);
      res.status(500).send('Internal Server Error');
    } finally {
      await mssql.close();
    }
  });

// API endpoint to register a new user
app.post('/register', async (req, res) => {
    try {
        // Extract parameters from the request body
        const { firstName, lastName, gender, dob, email, phoneNumber, role } = req.body;
    
        // Create a new MSSQL connection pool
        const pool = await mssql.connect(config);
    
        // Call the stored procedure with the extracted parameters
        const result = await pool.request()
          .input('FirstName', mssql.VarChar(50), firstName)
          .input('LastName', mssql.VarChar(50), lastName)
          .input('Gender', mssql.VarChar(25), gender)
          .input('DOB', mssql.Date, dob)
          .input('Email', mssql.VarChar(100), email)
          .input('PhoneNumber', mssql.VarChar(25), phoneNumber)
          .input('Role', mssql.VarChar(10), role)
          .execute('CreateUser'); // Call the stored procedure named 'CreateUser'
    
        // Close the MSSQL connection pool
        await pool.close();
    
        // Send a success response to the client
        res.status(200).send('User created successfully');
      } catch (error) {
        console.error('Error:', error);
        // Send an error response to the client
        res.status(500).send('Internal Server Error');
      }
});

// Define a route to handle POST requests to /cars
app.post('/cars', async (req, res) => {
    try {
      // Extract parameters from the request body
      const { firstName, lastName, gender, dob, email, phoneNumber, role, driverLicenseNumber, carModel, carType, registrationNumber, licensePlate, capacity } = req.body;
  
      // Create a new MSSQL connection pool
      const pool = await mssql.connect(config);
  
      // Call the stored procedure with the extracted parameters
      const result = await pool.request()
        .input('FirstName', mssql.VarChar(50), firstName)
        .input('LastName', mssql.VarChar(50), lastName)
        .input('Gender', mssql.VarChar(25), gender)
        .input('DOB', mssql.Date, dob)
        .input('Email', mssql.VarChar(100), email)
        .input('PhoneNumber', mssql.VarChar(25), phoneNumber)
        .input('Role', mssql.VarChar(10), role)
        .input('LicenseNumber', mssql.VarChar(50), driverLicenseNumber)
        .input('CarModel', mssql.VarChar(25), carModel)
        .input('CarType', mssql.VarChar(25), carType)
        .input('RegistrationNumber', mssql.VarChar(25), registrationNumber)
        .input('LicensePlate', mssql.VarChar(25), licensePlate)
        .input('Capacity', mssql.Int, capacity)
        .execute('CreateUser'); // Call the stored procedure named 'CreateUser'
  
      // Close the MSSQL connection pool
      await pool.close();
  
      // Send a success response to the client
      res.status(200).send('User created successfully');
    } catch (error) {
      console.error('Error:', error);
      // Send an error response to the client
      res.status(500).send('Internal Server Error');
    }
  });

  app.post('/bookRide', async (req, res) => {
    const { PassengerID, TripType, CarType, StartStreet, StartCity, DropStreet, DropCity } = req.body;

    try {
        // Connect to the database
        const pool = await mssql.connect(config);

        // Call the stored procedure
        const result = await mssql.query`
            EXEC CreateNewTrip 
            @PassengerID = ${PassengerID},
            @TripType = ${TripType},
            @CarType = ${CarType},
            @StartStreet = ${StartStreet},
            @StartCity = ${StartCity},
            @DropStreet = ${DropStreet},
            @DropCity = ${DropCity}
        `;

        // Close the database connection
        await pool.close();

        // Assuming the stored procedure returns a recordset with the relevant data
        const tripDetails = result.recordset[0];

        // Send a success response with the trip details
        res.status(200).json({
            success: true,
            message: 'Ride booked successfully',
            tripId: tripDetails.TripID,
            passengerTripId: tripDetails.PassengerTripID,
            passengerId: tripDetails.PassengerID
        });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ success: false, message: 'Failed to book ride' });
    }
});

app.post('/fetchBillingInfo', async (req, res) => {
    // Replace with actual retrieval of passengerID and passengerTripID
    // For example, if you're sending them as query parameters:
    // const { passengerID, passengerTripID } = req.query;
    
    // Or if you're sending them in the body of a POST request:
    const { passengerID, passengerTripID } = req.body;
    console.log('Passen:-' + passengerID)
    console.log('passTID:- '+ passengerTripID)

    try {
        // Connect to the database
        const pool = await mssql.connect(config);

        // Call the stored procedure
        const result = await mssql.query`
            EXEC DisplayBillingDetails
            @PassengerID = ${passengerID},
            @PassengerTripID = ${passengerTripID}
        `;

        // Close the database connection
        await pool.close();

        // Assuming the stored procedure returns a recordset with the relevant data
        // Send a success response with the billing details
        res.status(200).json(result.recordset); // This assumes that the SP returns a recordset
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ success: false, message: 'Failed to fetch billing info' });
    }
});


app.get('/',(re, res)=> {
    return res.json("From Backend Side");
})

app.listen(8081, ()=>{
    console.log("listening");
} )
