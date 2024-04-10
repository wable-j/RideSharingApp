import React, { useState } from "react";
import { Button, Container, Grid, TextField, Typography, MenuItem } from "@mui/material";
import { useNavigate, useLocation } from "react-router-dom";

function RegisterDriver() {
  const [carModel, setCarModel] = useState("");
  const [carType, setCarType] = useState("");
  const [registrationNumber, setRegistrationNumber] = useState("");
  const [licensePlate, setLicensePlate] = useState("");
  const [capacity, setCapacity] = useState("");
  const navigate = useNavigate();
  const location = useLocation();
  const { firstName, lastName, gender, dob, email, password, phoneNumber, driverLicenseNumber,role } = location.state;


  const handleSubmit = async (e) => {
    e.preventDefault();

    try {
      const response = await fetch("http://localhost:8081/cars", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
            firstName,
            lastName,
            gender,
            dob,
            email,
            password,
            phoneNumber,
            role,
            driverLicenseNumber,
          carModel,
          carType,
          registrationNumber,
          licensePlate,
          capacity
        }),
      });

      if (response.ok) {
        alert("Car registration successful");
        // Redirect to home page after successful registration
        navigate("/");
      } else {
        const errorMessage = await response.text();
        alert(errorMessage);
      }
    } catch (error) {
      console.error("Error:", error);
      alert("Failed to register car. Please try again.");
    }
  };

  return (
    <Container maxWidth="md">
      <div style={{ marginTop: "4rem", marginBottom: "2rem" }}>
        <Typography variant="h4" align="center" gutterBottom>
          Register Driver
        </Typography>
        <form onSubmit={handleSubmit}>
          <Grid container spacing={2}>
            <Grid item xs={12}>
              <TextField
                fullWidth
                variant="outlined"
                label="Car Model"
                value={carModel}
                onChange={(e) => setCarModel(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                select
                variant="outlined"
                label="Car Type"
                value={carType}
                onChange={(e) => setCarType(e.target.value)}
                required
              >
                {["Sedan", "Truck", "SUV", "Hatchback", "Van"].map((type) => (
                  <MenuItem key={type} value={type}>
                    {type}
                  </MenuItem>
                ))}
              </TextField>
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                variant="outlined"
                label="Registration Number"
                value={registrationNumber}
                onChange={(e) => setRegistrationNumber(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                variant="outlined"
                label="License Plate Number"
                value={licensePlate}
                onChange={(e) => setLicensePlate(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                select
                variant="outlined"
                label="Capacity"
                value={capacity}
                onChange={(e) => setCapacity(e.target.value)}
                required
              >
                {[1, 2, 3, 4, 5, 6, 7, 8].map((number) => (
                  <MenuItem key={number} value={number}>
                    {number}
                  </MenuItem>
                ))}
              </TextField>
            </Grid>
            <Grid item xs={12}>
              <Button
                type="submit"
                variant="contained"
                color="primary"
                fullWidth
              >
                Save
              </Button>
            </Grid>
          </Grid>
        </form>
      </div>
    </Container>
  );
}

export default RegisterDriver;
