import React, { useState, useEffect } from 'react';
import { DataGrid } from '@mui/x-data-grid';
import Button from '@mui/material/Button';
import DeleteIcon from '@mui/icons-material/Delete';

const columns = [
  { field: 'id', headerName: 'ID', width: 90 },
  { field: 'UserID', headerName: 'User ID', width: 120 },
  { field: 'FirstName', headerName: 'First Name', width: 150 },
  { field: 'LastName', headerName: 'Last Name', width: 150 },
  { field: 'Gender', headerName: 'Gender', width: 120 },
  { field: 'DOB', headerName: 'DOB', width: 120 },
  { field: 'Email', headerName: 'Email', width: 200 },
  { field: 'PhoneNumber', headerName: 'Phone Number', width: 150 },
  // Add more fields as needed
];

const Admin = () => {
  const [users, setUsers] = useState([]);
  const [selectedRows, setSelectedRows] = useState([]);

  useEffect(() => {
    // Fetch users
    fetchUsers();
  }, []);

  const fetchUsers = async () => {
    try {
      const response = await fetch('http://localhost:8081/getAllUsers');
      if (!response.ok) {
        throw new Error('Failed to fetch users');
      }
      const data = await response.json();
      // Add a unique id to each row
      const usersWithIds = data.map((user, index) => ({ id: index + 1, ...user }));
      setUsers(usersWithIds);
    } catch (error) {
      console.error('Error fetching users:', error);
    }
  };

  const handleDelete = async () => {
    try {
      // Extract ids of selected rows
      const idsToDelete = selectedRows.map((row) => row.id);

      // Make API call to delete users
      const response = await fetch('http://localhost:8081/deleteUser', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ ids: idsToDelete }),
      });

      if (!response.ok) {
        throw new Error('Failed to delete users');
      }

      // Remove deleted rows from the DataGrid
      const updatedUsers = users.filter((user) => !idsToDelete.includes(user.id));
      setUsers(updatedUsers);

      // Clear selected rows after deletion
      setSelectedRows([]);
    } catch (error) {
      console.error('Error deleting users:', error);
    }
  };

  const handleSelectionChange = (newSelection) => {
    setSelectedRows(newSelection.selectionModel.map((id) => users.find((user) => user.id === id)));
  };

  return (
    <div style={{ height: 400, width: '100%' }}>
      <DataGrid
        rows={users}
        columns={columns}
        pageSize={5}
        checkboxSelection
        disableSelectionOnClick
        onSelectionModelChange={handleSelectionChange}
      />
      <Button
        variant="contained"
        color="error"
        startIcon={<DeleteIcon />}
        onClick={handleDelete}
      >
        Delete Selected Rows
      </Button>
    </div>
  );
};

export default Admin;
