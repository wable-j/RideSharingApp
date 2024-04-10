import React, { useState, useEffect } from "react";
import { Button, Container, Grid, MenuItem, Select, Typography, Radio, RadioGroup,Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TableRow,
    Paper, FormControlLabel, FormControl, FormLabel } from "@mui/material";
import { useNavigate, useLocation } from "react-router-dom";

function HomePage() {
    // Define state variables
    const [cities, setCities] = useState([]);
    const [carTypes, setCarTypes] = useState([]);
    const [fromCity, setFromCity] = useState('');
    const [toCity, setToCity] = useState('');
    const [fromStreets, setFromStreets] = useState([]);
    const [toStreets, setToStreets] = useState([]);
    const [selectedFromStreet, setSelectedFromStreet] = useState('');
    const [selectedToStreet, setSelectedToStreet] = useState('');
    const [selectedCarType, setSelectedCarType] = useState('');
    const [rideType, setRideType] = useState('Personal');
    const [passengerID, setPassengerID] = useState('');
    const [passengerFirstName, setPassengerFirstName] = useState('');
    const [passengerLastName, setPassengerLastName] = useState('');
    const [trips, setTrips] = useState([]);
    const navigate = useNavigate();
    const location = useLocation();
    const { firstName, lastName, role } = location.state;
    const [TripID,setTripID] = useState('');
    const [passengerTripID,setPassengerTripID] = useState('');

    // Fetch data on component mount
    useEffect(() => {
        fetchPassengerID();
        fetchCities();
        fetchCarTypes();
    }, []);

    // Fetch passenger ID
    const fetchPassengerID = async () => {
        try {
            const response = await fetch(`http://localhost:8081/getPassangerID?firstName=${firstName}&lastName=${lastName}`);
            if (response.ok) {
                const data = await response.json();
                const { passengerID } = data;
                setPassengerID(passengerID);
                setPassengerFirstName(firstName);
                setPassengerLastName(lastName);
            } else {
                console.error("Failed to fetch passenger ID");
            }
        } catch (error) {
            console.error("Error:", error);
        }
    };

    // Fetch cities
    const fetchCities = async () => {
        try {
            const response = await fetch("http://localhost:8081/cities");
            if (response.ok) {
                const data = await response.json();
                setCities(data);
            } else {
                console.error("Failed to fetch cities");
            }
        } catch (error) {
            console.error("Error:", error);
        }
    };

    // Fetch streets
    const fetchStreets = async (city, setStreets) => {
        try {
            const response = await fetch(`http://localhost:8081/streets?city=${encodeURIComponent(city)}`);
            if (response.ok) {
                const data = await response.json();
                setStreets(data);
            } else {
                console.error(`Failed to fetch streets for ${city}`);
            }
        } catch (error) {
            console.error('Error:', error);
        }
    };

    // Fetch car types
    const fetchCarTypes = async () => {
        try {
            const response = await fetch("http://localhost:8081/getCarType");
            if (response.ok) {
                const data = await response.json();
                setCarTypes(data);
            } else {
                console.error("Failed to fetch car types");
            }
        } catch (error) {
            console.error("Error:", error);
        }
    };

    // Fetch all trips
    const fetchAllTrips = async () => {
        try {
            const response = await fetch("http://localhost:8081/displayAllTrips", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({
                    PassengerID: passengerID,
                    TripType: rideType,
                    CarType: selectedCarType,
                    StartStreet: selectedFromStreet,
                    StartCity: fromCity,
                    DropStreet: selectedToStreet,
                    DropCity: toCity
                })
            });
            if (response.ok) {
                const data = await response.json();
                setTrips(data);
            } else {
                console.error("Failed to fetch trips");
            }
        } catch (error) {
            console.error("Error:", error);
        }
    };

    // Event handler for "From City" select input
    const handleFromCityChange = (event) => {
        const city = event.target.value;
        setFromCity(city);
        fetchStreets(city, setFromStreets);
        setSelectedFromStreet('');
    };

    // Event handler for "To City" select input
    const handleToCityChange = (event) => {
        const city = event.target.value;
        setToCity(city);
        fetchStreets(city, setToStreets);
        setSelectedToStreet('');
    };

    // Event handler for selecting car type
    const handleCarTypeChange = (event) => {
        setSelectedCarType(event.target.value);
    };

    // Event handler for "Ride Type" radio buttons
    const handleRideTypeChange = (event) => {
        setRideType(event.target.value);
    };

    // Event handler for booking a ride
const handleBookRide = async () => {
    try {
        const response = await fetch("http://localhost:8081/bookRide", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                PassengerID: passengerID,
                TripType: rideType,
                CarType: selectedCarType,
                StartStreet: selectedFromStreet,
                StartCity: fromCity,
                DropStreet: selectedToStreet,
                DropCity: toCity
            })
        });
        if (response.ok) {
            const data = await response.json();
            console.log("Ride booked successfully:", data);

            // Store returned values in constants
            setTripID(data.tripId);
            setPassengerTripID(data.passengerTripId);
            console.log("passTrip:- " + data.passengerTripId);
            //const passengerId = data.passengerId;

            // Use the stored constants as needed, for example, passing them to the navigate function
            navigate('/billing', {
                state: {
                    passengerFirstName,
                    passengerLastName,
                    passengerID, // Updated to use the returned passenger ID
                    fromCity,
                    toCity,
                    selectedFromStreet,
                    selectedToStreet,
                    rideType,
                    selectedCarType,
                    TripID, // Pass the trip ID to the next page
                    passengerTripID: data.passengerTripId // Pass the passenger trip ID to the next page
                }
            });
        } else {
            console.error("Failed to book ride");
        }
    } catch (error) {
        console.error("Error:", error);
    }
};


    // Event handler for fetching all trips
    const handleFetchRides = () => {
        fetchAllTrips();
    };

    // Function to handle joining a trip
    const joinTrip = async (TripID) => {
        try {
            setPassengerTripID(TripID);
            const response = await fetch("http://localhost:8081/joinTrip", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({
                    PassengerID: passengerID,
                    TripID: TripID
                })
            });
            if (response.ok) {
                const data = await response.json();
            // Handle success
            console.log("Joined trip successfully:", data);
            // Redirect to billing page with necessary data
            navigate('/billing', {
                state: {
                    passengerFirstName,
                    passengerLastName,
                    passengerID,
                    fromCity,
                    toCity,
                    selectedFromStreet,
                    selectedToStreet,
                    rideType,
                    selectedCarType,
                    TripID,
                    passengerTripID
                }
            });
            } else {
                console.error("Failed to join trip");
            }
        } catch (error) {
            console.error("Error:", error);
        }
    };

    return (
        <Container maxWidth="md">
            <div style={{ marginTop: "4rem", marginBottom: "2rem" }}>
                <Typography variant="h4" align="center" gutterBottom>
                    Book a Ride
                </Typography>
                <Grid container spacing={2}>
                    {/* Display Passenger Information */}
                    <Grid item xs={12}>
                        <Typography variant="h6" gutterBottom>
                            Passenger Information
                        </Typography>
                        <Typography gutterBottom>
                            Passenger ID: {passengerID}
                        </Typography>
                        <Typography gutterBottom>
                            First Name: {passengerFirstName}
                        </Typography>
                        <Typography gutterBottom>
                            Last Name: {passengerLastName}
                        </Typography>
                    </Grid>
                    {/* Car Type Dropdown */}
                    <Grid item xs={12}>
                        <Select
                            fullWidth
                            displayEmpty
                            variant="outlined"
                            value={selectedCarType}
                            onChange={handleCarTypeChange}
                            renderValue={(selected) => selected || "Select Car Type"}
                        >
                            <MenuItem value="">Select Car Type</MenuItem>
                            {carTypes.map((carType) => (
                                <MenuItem key={carType} value={carType}>
                                    {carType}
                                </MenuItem>
                            ))}
                        </Select>
                    </Grid>
                    {/* From City and From Street */}
                    <Grid item xs={6}>
                        <Select
                            fullWidth
                            displayEmpty
                            variant="outlined"
                            value={fromCity}
                            onChange={handleFromCityChange}
                            renderValue={(selected) => selected || "From City"}
                        >
                            <MenuItem value="">From City</MenuItem>
                            {cities.map((city) => (
                                <MenuItem key={city} value={city}>
                                    {city}
                                </MenuItem>
                            ))}
                        </Select>
                        <Select
                            fullWidth
                            displayEmpty
                            variant="outlined"
                            value={selectedFromStreet}
                            onChange={(e) => setSelectedFromStreet(e.target.value)}
                            renderValue={(selected) => selected || "From Street"}
                        >
                            <MenuItem value="">From Street</MenuItem>
                            {fromStreets.map((street) => (
                                <MenuItem key={street} value={street}>
                                    {street}
                                </MenuItem>
                            ))}
                        </Select>
                    </Grid>
                    {/* To City and To Street */}
                    <Grid item xs={6}>
                        <Select
                            fullWidth
                            displayEmpty
                            variant="outlined"
                            value={toCity}
                            onChange={handleToCityChange}
                            renderValue={(selected) => selected || "To City"}
                        >
                            <MenuItem value="">To City</MenuItem>
                            {cities.map((city) => (
                                <MenuItem key={city} value={city}>
                                    {city}
                                </MenuItem>
                            ))}
                        </Select>
                        <Select
                            fullWidth
                            displayEmpty
                            variant="outlined"
                            value={selectedToStreet}
                            onChange={(e) => setSelectedToStreet(e.target.value)}
                            renderValue={(selected) => selected || "To Street"}
                        >
                            <MenuItem value="">To Street</MenuItem>
                            {toStreets.map((street) => (
                                <MenuItem key={street} value={street}>
                                    {street}
                                </MenuItem>
                            ))}
                        </Select>
                    </Grid>
                    {/* Ride Type Radio Buttons */}
                    <Grid item xs={12}>
                        <FormControl component="fieldset">
                            <FormLabel component="legend">Ride Type</FormLabel>
                            <RadioGroup row aria-label="rideType" name="rideType" value={rideType} onChange={handleRideTypeChange}>
                                <FormControlLabel value="Personal" control={<Radio />} label="Personal" />
                                <FormControlLabel value="Business" control={<Radio />} label="Business" />
                            </RadioGroup>
                        </FormControl>
                    </Grid>
                    {/* Buttons */}
                    <Grid container spacing={2} item xs={12}>
                        <Grid item xs={6}>
                            <Button
                                variant="contained"
                                color="primary"
                                fullWidth
                                onClick={handleBookRide}
                            >
                                Book Ride
                            </Button>
                        </Grid>
                        <Grid item xs={6}>
                            <Button
                                variant="contained"
                                color="primary"
                                fullWidth
                                onClick={handleFetchRides}
                            >
                                Fetch Rides
                            </Button>
                        </Grid>
                    </Grid>
                    {/* New table to display trips */}
                    <TableContainer component={Paper} style={{ marginTop: "2rem" }}>
                        <Table>
                            <TableHead>
                                <TableRow>
                                    <TableCell>Trip ID</TableCell>
                                    <TableCell>Driver ID</TableCell>
                                    <TableCell>Trip Type</TableCell>
                                    <TableCell>Date</TableCell>
                                    <TableCell>Status</TableCell>
                                    <TableCell>Join</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                {trips.map((trip) => (
                                    <TableRow key={trip.TripID}>
                                        <TableCell>{trip.TripID}</TableCell>
                                        <TableCell>{trip.DriverID}</TableCell>
                                        <TableCell>{trip.TripType}</TableCell>
                                        <TableCell>{trip.Date}</TableCell>
                                        <TableCell>{trip.TripStatus}</TableCell>
                                        <TableCell>
                                            <Button variant="contained" onClick={() => joinTrip(trip.TripID)}>Join</Button>
                                        </TableCell>
                                    </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </Grid>
            </div>
        </Container>
    );
}

export default HomePage;
