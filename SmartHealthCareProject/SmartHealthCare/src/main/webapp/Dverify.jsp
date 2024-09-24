<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: lightcyan;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
        text-align: center;
        width: 80%;
        max-width: 600px;
    }
    
     .form-container {
            padding: 70px;
            width: 50%; /* Adjust to control form width */
            box-sizing: border-box;
        }
        .image-container {
            background: url('<%= request.getContextPath() %>/images/data_entry.webp') no-repeat center center;
            background-size: cover;
            width: 30%; /* Adjust to control image width */
            min-height: 300px; /* Ensure it has a minimum height */
            box-sizing: border-box;
        border: 1.5px;
        border-radius: 5px;
            
        }
        
    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }
    table {
        margin: 0 auto;
    }
    td {
        padding: 10px;
    }
    input[type="text"], input[type="email"], input[type="submit"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    .message {
        font-weight: bold;
        margin-bottom: 20px;
    }
    .success-message {
        color: green;
    }
    .error-message {
        color: red;
    }
</style>
</head>
<body>
<div class="image-container"></div>
        <div class="form-container">
  <div class="container">
   
      <h1>Enter Doctor Details</h1>
      <form action="addDoctorDetails" method="post">
          <table>
              <tr>
                  <td>Doctor Name:</td>
                  <td><input type="text" name="doctorName" required /></td>
              </tr>
              <tr>
                  <td>Email:</td>
                  <td><input type="email" name="doctorEmail" required /></td>
              </tr>
              <tr>
                  <td colspan="2" style="text-align: center;">
                      <input type="submit" value="Submit" />
                  </td>
              </tr>
          </table>
      </form>

      <!-- Display success or error messages -->
      <% 
          String successMessage = (String) request.getAttribute("successMessage");
          String errorMessage = (String) request.getAttribute("errorMessage");
          if (successMessage != null && !successMessage.isEmpty()) { 
      %>
          <div class="message success-message"><%= successMessage %></div>
      <% 
          } 
          if (errorMessage != null && !errorMessage.isEmpty()) { 
      %>
          <div class="message error-message"><%= errorMessage %></div>
      <% 
          } 
      %>
      </div>
  </div>
</body>
</html>
