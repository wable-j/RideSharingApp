// App.jsx
import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Login from "./Pages/Login";
import HomePage from "./Pages/HomePage";
import Register from "./Pages/Register";
import RegisterDriver from "./Pages/RegisterDriver"
import Billing from "./Pages/Billing";
import Complaint from "./Pages/Complaint";
import Admin from "./Pages/Admin";

function App() {
  return (
    /*<div>
      <EmployeeTable />
      <Login />
      <Test />
    </div>*/
    <Router>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/admin" element={<Admin />} />
        <Route path="/HomePage" element={<HomePage />} />
        <Route path="/signup" element={<Register />} />
        <Route path="/registerDriver" element={<RegisterDriver />} />
        <Route path="/billing" element={<Billing />} />
        <Route path="/complaint" element={<Complaint />} />
      </Routes>
    </Router>
  );
}

export default App;
