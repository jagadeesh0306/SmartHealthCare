<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Page</title>
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
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
         .form-container {
            padding: 70px;
            width: 50%; /* Adjust to control form width */
            box-sizing: border-box;
        }
        .image-container {
            background: url('<%= request.getContextPath() %>/images/Doctor.jpeg') no-repeat center center;
            background-size: cover;
            width: 40%; /* Adjust to control image width */
            min-height: 600px; /* Ensure it has a minimum height */
            box-sizing: border-box;
        border: 1.5px;
        border-radius: 5px;
        margin-right : 125px;
            
        }
    
   
    h1 {
        color: black;
    }
    input[type="submit"] {
        width: 200px;
        padding: 10px;
        margin: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"].get-details {
        background-color: dodgerblue;
        color: white;
    }
    input[type="submit"].get-details:hover {
        background-color: darkblue;
    }
    input[type="submit"].send-reports {
        background-color: red;
        color: white;
    }
    input[type="submit"].send-reports:hover {
        background-color: darkred;
    }
   
</style>
</head>
<body>
<div class="image-container"></div>
        <div class="form-container">
<div class="container">

    <h1>Welcome Doctor</h1>
    <form action="getPatientDetails" method="post">
        <input type="submit" class="get-details" name="getDetails" value="getDetails & Send Reportss"/>
    </form>
    </div>
</div>
</body>
</html>


<!-- name Attribute: Typically used to identify form controls when submitting form data. 
It's useful for server-side processing but does not affect styling directly.
class Attribute: Used to apply CSS styles to elements and can be used for JavaScript manipulation. 
It is not directly related to form submission. -->
