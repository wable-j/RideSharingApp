import React, { useState, useEffect } from "react";
import { Box, Button, Container, Typography, Tooltip, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Paper } from "@mui/material";
import { styled } from '@mui/material/styles';
import Rating from '@mui/material/Rating';
import { useLocation , Link } from "react-router-dom";
import SentimentVeryDissatisfiedIcon from '@mui/icons-material/SentimentVeryDissatisfied';
import SentimentDissatisfiedIcon from '@mui/icons-material/SentimentDissatisfied';
import SentimentSatisfiedIcon from '@mui/icons-material/SentimentSatisfied';
import SentimentSatisfiedAltIcon from '@mui/icons-material/SentimentSatisfiedAltOutlined';
import SentimentVerySatisfiedIcon from '@mui/icons-material/SentimentVerySatisfied';

function useQuery() {
  return new URLSearchParams(useLocation().search);
}

const customIcons = {
  1: {
    icon: <SentimentVeryDissatisfiedIcon color="error" />,
    label: 'Very Dissatisfied',
  },
  2: {
    icon: <SentimentDissatisfiedIcon color="error" />,
    label: 'Dissatisfied',
  },
  3: {
    icon: <SentimentSatisfiedIcon color="warning" />,
    label: 'Neutral',
  },
  4: {
    icon: <SentimentSatisfiedAltIcon color="success" />,
    label: 'Satisfied',
  },
  5: {
    icon: <SentimentVerySatisfiedIcon color="success" />,
    label: 'Very Satisfied',
  },
};


function IconContainer(props) {
  const { value, ...other } = props;
  return <span {...other}>{customIcons[value].icon}</span>;
}

const StyledRating = styled(Rating)(({ theme }) => ({
  '& .MuiRating-iconEmpty .MuiSvgIcon-root': {
    color: theme.palette.action.disabled,
  },
}));

function Billing() {
  const query = useQuery();
  const location = useLocation();
  const [billingInfo, setBillingInfo] = useState([]);
const {
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
} = location.state || {};
  const startLocation = fromCity + " --> " +  selectedFromStreet;
  const endLocation = toCity + " --> " +  selectedToStreet;
  const [selectedRating, setSelectedRating] = useState(null);
  const [isPaymentComplete, setIsPaymentComplete] = useState(false);

  useEffect(() => {
    // Assuming passengerID and passengerTripID are available in the component's scope
    // and have been set to valid values previously in the component's lifecycle.
  
    const fetchBillingInfo = async () => {
      try {
        const response = await fetch("http://localhost:8081/fetchBillingInfo", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                passengerID: passengerID,
                passengerTripID: passengerTripID
            })
        });
  
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
  
        const data = await response.json();
        setBillingInfo(data); // Set the billing information in state
      } catch (error) {
        console.error("Error fetching billing info:", error);
      }
    };
  
    fetchBillingInfo();
  }, [passengerID, passengerTripID]); // Dependencies array to refetch when these values change
  

  const handleRatingChange = (event, newValue) => {
    setSelectedRating(newValue);
  };

  const handlePay = () => {
    // Implement payment functionality
    console.log("Payment completed");
    setIsPaymentComplete(true);
  };

  if (!location.state) {
    // Redirect back to HomePage or display an error message
    return <Redirect to="/" />; // Make sure to import Redirect from 'react-router-dom'
    // or return a message
    return <div>Please book a ride before accessing the billing page.</div>;
  }

  return (
    <Container maxWidth="md">
      <Box mt={4} mb={2}>
        <Typography variant="h4" align="center" gutterBottom>
          Billing Details
        </Typography>
        <Typography variant="body1" gutterBottom>
          <strong>Passenger Name:</strong> {passengerFirstName} {passengerLastName}
        </Typography>
        <Typography variant="body1" gutterBottom>
          <strong>Passenger ID:</strong> {passengerID}
        </Typography>
        <Typography variant="body1" gutterBottom>
          <strong>Passenger Trip ID:</strong> {passengerTripID}
        </Typography>
        <Typography variant="body1" gutterBottom>
          <strong>Start Location:</strong> {startLocation}
        </Typography>
        <Typography variant="body1" gutterBottom>
          <strong>End Location:</strong> {endLocation}
        </Typography>
        <Typography variant="body1" gutterBottom>
          <strong>Ride Type:</strong> {rideType}
        </Typography>
        <Typography variant="body1" gutterBottom>
          <strong>Rating: </strong>
          <StyledRating
            name="highlight-selected-only"
            defaultValue={2}
            IconContainerComponent={IconContainer}
            getLabelText={(value) => customIcons[value].label}
            highlightSelectedOnly
            onChange={handleRatingChange}
          />
        </Typography>
        <TableContainer component={Paper} sx={{ marginTop: 4 }}>
        <Table aria-label="simple table">
          <TableHead>
            <TableRow>
              <TableCell>Detail</TableCell>
              <TableCell align="right">Value</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {billingInfo.map((row) => (
              <React.Fragment key={row.BillingID}>
                <TableRow>
                  <TableCell component="th" scope="row">Bill ID</TableCell>
                  <TableCell align="right">{row.BillingID}</TableCell>
                </TableRow>
                <TableRow>
                  <TableCell component="td" scope="row">Bill Amount</TableCell>
                  <TableCell align="right">{row.BillAmount}</TableCell>
                </TableRow>
                <TableRow>
                  <TableCell component="td" scope="row">Discount</TableCell>
                  <TableCell align="right">{row.DiscountAmount}</TableCell>
                </TableRow>
                <TableRow>
                  <TableCell component="td" scope="row">Amount Charged</TableCell>
                  <TableCell align="right">{row.ChargedAmount}</TableCell>
                </TableRow>
                <TableRow>
                  <TableCell component="td" scope="row">Payment Method</TableCell>
                  <TableCell align="right">{row.PaymentMethod}</TableCell>
                </TableRow>
                <TableRow>
                  <TableCell component="td" scope="row">Credit Card Number</TableCell>
                  <TableCell align="right">{row.CreditCardNumber}</TableCell>
                </TableRow>
              </React.Fragment>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
        
        <Tooltip title={`Selected rating: ${selectedRating}`} open={selectedRating !== null} onClose={() => setSelectedRating(null)}>
          <Button
            variant="contained"
            color="primary"
            fullWidth
            style={{ marginTop: "2rem" }}
            onClick={handlePay}
            disabled={selectedRating === null || isPaymentComplete} // Disable only if rating not selected or payment already completed
          >
            Submit Rating
          </Button>
        </Tooltip>
        <Typography align="center" style={{ marginTop: "1rem" }}>
          <Link to="/complaint">Raise a complaint</Link>
        </Typography>
      </Box>
    </Container>
  );
}

export default Billing;
