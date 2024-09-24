<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login Page</title>
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
            display: flex;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px; /* Set a max width */
            }
            
     .image-container {
            background: url('<%= request.getContextPath() %>/images/doctor.jpg') no-repeat center center;
            background-size: cover;
            width: 600%; /* Adjust to control image width */
            min-height: 450px; /* Ensure it has a minimum height */
           
           
            
        }
    .login-container {
        padding: 60px;
        width : 300%;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
       
       
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
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    .register-container {
        text-align: center;
        margin-top: 10px;
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
    .register-container input[type="submit"]:hover 
    {
      background-color: darkblue;
    }
</style>
</head>
</head>
<body>

 <div class="container">
  	
        <div class="image-container"></div>
        <div class="login-container">
       
       <h2>Doctor Login</h2>
       <form action="doctor" method="post">
           <table>
               <tr>
                   <td>Email:</td>
                   <td><input type="email" name="email" required /></td>
               </tr>
               <tr>
                   <td>Password:</td>
                   <td><input type="password" name="password" required /></td>
               </tr>
               <tr>
                   <td colspan="2" style="text-align: center;">
                       <input type="submit" name="login" value="Login" />
                   </td>
               </tr>
           </table>
       </form>
       <div class="register-container">
           <form action="VerifyDocEmail.jsp" method="post">
               <input type="submit" value="New Registration ?" />
           </form>
       </div>
        <p style="color:red;">
        <%= request.getAttribute("DoctorloginError") != null ? request.getAttribute("DoctorloginError") : "" %>
       </p>
       </div>
   </div>
</body>
</html>