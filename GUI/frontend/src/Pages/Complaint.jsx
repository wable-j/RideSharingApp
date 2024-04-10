import React, { useState } from "react";
import { Button, Container, TextField, Typography } from "@mui/material";

function Complaint() {
  const [complaint, setComplaint] = useState("");

  const handleSubmit = () => {
    // Implement submit complaint functionality
    console.log("Complaint submitted:", complaint);
    // You can send the complaint data to the backend here
  };

  return (
    <Container maxWidth="md">
      <div style={{ marginTop: "4rem", marginBottom: "2rem" }}>
        <Typography variant="h4" align="center" gutterBottom>
          Complaint
        </Typography>
        <TextField
          fullWidth
          variant="outlined"
          label="Complaint"
          multiline
          rows={4}
          value={complaint}
          onChange={(e) => setComplaint(e.target.value)}
          style={{ marginBottom: "1rem" }}
        />
        <Button
          variant="contained"
          color="primary"
          fullWidth
          onClick={handleSubmit}
        >
          Submit Complaint
        </Button>
      </div>
    </Container>
  );
}

export default Complaint;
