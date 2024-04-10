import React, { useState } from "react";
import { TextField, Button, Typography, Container, Grid, FormControl, FormLabel, RadioGroup, Radio, FormControlLabel } from "@mui/material";
import { useNavigate } from "react-router-dom";

function Register() {
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [gender, setGender] = useState("");
  const [dob, setDob] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");
  const [role, setRole] = useState("passenger");
  const [driverLicenseNumber, setDriverLicenseNumber] = useState(""); // New state for driver's license number
  const navigate = useNavigate();
  

  const handleRegisterPassenger = async () => {
    try {
      const response = await fetch('http://localhost:8081/register', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          firstName,
          lastName,
          gender,
          dob,
          email,
          password,
          phoneNumber,
          role
        })
      });

      if (response.ok) {
        alert('Passenger registration successful');
        // Redirect to login page or any other page as needed
        navigate('/HomePage', {
          state: {
            firstName,
            lastName,
            gender,
            dob,
            email,
            password,
            phoneNumber,
            role
          }
        });
      } else {
        const errorMessage = await response.text();
        alert(errorMessage);
      }
    } catch (error) {
      console.error('Error:', error);
      alert('Failed to register. Please try again.');
    }
  };

  /*const handleRegisterDriver = async () => {
    try {
      const response = await fetch('http://localhost:8081/register', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          firstName,
          lastName,
          gender,
          dob,
          email,
          password,
          phoneNumber,
          driverLicenseNumber // Include driver's license number in the request body for driver registration
        })
      });

      if (response.ok) {
        alert('Driver registration successful');
        // Redirect to login page or any other page as needed
      } else {
        const errorMessage = await response.text();
        alert(errorMessage);
      }
    } catch (error) {
      console.error('Error:', error);
      alert('Failed to register. Please try again.');
    }
  };*/

  const handleSubmit = (e) => {
    e.preventDefault();
    if (role === "passenger") {
      handleRegisterPassenger();
    } else if (role === "driver") {
      navigate('/registerDriver', {
        state: {
          firstName,
          lastName,
          gender,
          dob,
          email,
          password,
          phoneNumber,
          driverLicenseNumber,
          role
        }
      });
    }
  };

  const handleRoleChange = (event) => {
    setRole(event.target.value);
  };

  return (
    <Container maxWidth="md">
      <div style={{ marginTop: "4rem", marginBottom: "2rem" }}>
        <Typography variant="h4" align="center" gutterBottom>
          Register
        </Typography>
        <form onSubmit={handleSubmit}>
          <Grid container spacing={2}>
            <Grid item xs={12} sm={6}>
              <TextField
                fullWidth
                variant="outlined"
                label="First Name"
                value={firstName}
                onChange={(e) => setFirstName(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12} sm={6}>
              <TextField
                fullWidth
                variant="outlined"
                label="Last Name"
                value={lastName}
                onChange={(e) => setLastName(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12}>
              <FormControl component="fieldset">
                <FormLabel component="legend">Gender</FormLabel>
                <RadioGroup
                  row
                  aria-label="gender"
                  name="gender"
                  value={gender}
                  onChange={(e) => setGender(e.target.value)}
                >
                  <FormControlLabel value="male" control={<Radio />} label="Male" />
                  <FormControlLabel value="female" control={<Radio />} label="Female" />
                </RadioGroup>
              </FormControl>
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                variant="outlined"
                label="Date of Birth"
                type="date"
                value={dob}
                onChange={(e) => setDob(e.target.value)}
                required
                InputLabelProps={{ shrink: true }}
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                variant="outlined"
                label="Email"
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                variant="outlined"
                label="Password"
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12}>
              <TextField
                fullWidth
                variant="outlined"
                label="Phone Number"
                value={phoneNumber}
                onChange={(e) => setPhoneNumber(e.target.value)}
                required
              />
            </Grid>
            <Grid item xs={12}>
              <FormControl component="fieldset">
                <FormLabel component="legend">Role</FormLabel>
                <RadioGroup
                  row
                  aria-label="role"
                  name="role"
                  value={role}
                  onChange={handleRoleChange}
                >
                  <FormControlLabel value="passenger" control={<Radio />} label="Passenger" />
                  <FormControlLabel value="driver" control={<Radio />} label="Driver" />
                </RadioGroup>
              </FormControl>
            </Grid>
            {role === "driver" && (
              <Grid item xs={12}>
                <TextField
                  fullWidth
                  variant="outlined"
                  label="Driver License Number"
                  value={driverLicenseNumber}
                  onChange={(e) => setDriverLicenseNumber(e.target.value)}
                  required
                />
              </Grid>
            )}
            <Grid item xs={12}>
              <Button
                type="submit"
                variant="contained"
                color="primary"
                fullWidth
              >
                Register
              </Button>
            </Grid>
          </Grid>
        </form>
      </div>
    </Container>
  );
}

export default Register;
