import React, { useState } from "react";
import { useNavigate, Link } from "react-router-dom";
import { TextField, Button, Typography, Container, Grid } from "@mui/material";

function Login() {
  const [email, setEmail] = useState("");
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
  
    try {
      const loginResponse = await fetch('http://localhost:8081/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({ email })
      });
  
      if (loginResponse.ok) {
        const userDetailsResponse = await fetch('http://localhost:8081/getUserDetail', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ email })
        });
  
        if (userDetailsResponse.ok) {
          const userDetails = await userDetailsResponse.json();
          console.log("User Details:", userDetails); // Log the user details
          
          const firstName = userDetails.FirstName;
          const lastName = userDetails.LastName;
          if (firstName && lastName) { // Check if firstName and lastName exist
            const cleanedFirstName = firstName.trim();
            const cleanedLastName = lastName.trim();
            navigate("/HomePage", {
              state: {
                firstName: cleanedFirstName,
                lastName: cleanedLastName,
                role: "Passenger"
              }
            });
          } else {
            alert('User details are incomplete.');
          }
        } else {
          alert('Failed to retrieve user details.');
        }
      } else {
        const errorMessage = await loginResponse.text();
        alert(errorMessage);
      }
    } catch (error) {
      console.error('Error:', error);
      alert('Failed to login. Please try again.');
    }
  };
  
  

  const handleSignUp = () => {
    // Redirect to the sign-up page
    navigate("/signup");
  };

  return (
    <Container maxWidth="xs">
      <div style={{ marginTop: "4rem", marginBottom: "2rem" }}>
        <Typography variant="h4" align="center" gutterBottom>
          Login
        </Typography>
        <form onSubmit={handleSubmit}>
          <Grid container spacing={2}>
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
          </Grid>
          <Button
            type="submit"
            variant="contained"
            color="primary"
            fullWidth
            style={{ marginTop: "2rem" }}
          >
            Login
          </Button>
          <Typography align="center">
            Don't have an account?{" "}
            <Link to="/signup" component="button">
              Sign up
            </Link>
          </Typography>
          <Typography align="center">
            Admin ?{" "}
            <Link to="/admin" component="button">
              Admin
            </Link>
          </Typography>
        </form>
      </div>
    </Container>
  );
}

export default Login;
