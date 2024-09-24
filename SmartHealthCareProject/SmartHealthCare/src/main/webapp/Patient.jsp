<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        text-align: center;
    }
    table {
        margin: 0 auto;
    }
    td {
        padding: 10px;
    }
    input[type="email"], input[type="password"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        box-sizing: border-box;
        border: 1px solid lightgray;
        border-radius: 4px;
    }
    input[type="email"]::placeholder,
    input[type="password"]::placeholder {
        color: gray;
    }
    input[type="submit"] {
        width: 100%;
        background-color: green;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: darkgreen;
    }
    .register-container input[type="submit"] {
        width: auto;
        background-color: dodgerblue;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .register-container input[type="submit"]:hover {
        background-color: darkblue;
    }
     .form-container {
            padding: 70px;
            width: 50%; /* Adjust to control form width */
            box-sizing: border-box;
        }
        .image-container {
            background: url('<%= request.getContextPath() %>/images/patient.jpeg') no-repeat center center;
            background-size: cover;
            width: 35%; /* Adjust to control image width */
            min-height: 600px; /* Ensure it has a minimum height */
            box-sizing: border-box;
        border: 1.5px;
        border-radius: 5px;
        margin-right : 190px;
            
        }
    h2 {
        color: black;
    }
</style>
</head>
<body>
<div class="image-container"></div>
        <div class="form-container">
<div class="container">
    <h2>Login Page</h2>
    <form action="patientlogin" method="post">
        <table>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" placeholder="Enter your email" required /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" placeholder="Enter your password" required /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="login" value="Login" />
                </td>
            </tr>
        </table>
    </form>
    <div class="register-container">
        <form action="PatientRegistration.jsp" method="post">
            <input type="submit" value="New Registration ?" />
        </form>
 <p style="color: red;">   
  <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
</p>
    </div>
</div>
</div>
</body>
</html>
