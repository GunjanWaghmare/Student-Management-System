<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Code World Training Institute</title>
    <style>
        body {
            background: url('https://cdn.pixabay.com/photo/2019/05/10/13/28/contact-us-4193523_1280.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        h1 {
            color:black;
            text-align: center;
            margin-top: 30px;
            font-size: 36px; /* Increased font size */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* Added text shadow for emphasis */
        }

        p {
            line-height: 1.6;
            text-align: center;
            font-size:20px;
        }

        .contact-info {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            position: relative;
        }

        .contact-info div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
            font-size: 18px;
        }

        p a {
            color: #3498db;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: center; /* Center the navbar horizontally */
            align-items: center; /* Center the navbar vertically */
        }

        .navbar a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: #333;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="main">Home</a>
        <a href="SignIn">Sign In</a>
        <a href="login">Login</a>
        <a href="AboutUs">About Us</a>
        <a href="ContactUs">Contact Us</a>
    </div>

    <h1>Contact Code World Training Institute</h1>

    <p>
       <strong>Have questions or feedback? We'd love to hear from you! Please find our contact information below.</strong> 
    </p>

    <div class="contact-info">
        <div>
            <label>Call Us On:</label>
            <p>+123456789</p>
        </div>

        <div>
            <label>Email Us:</label>
            <p><a href="mailto:info@codeworld.com">info@codeworld.com</a></p>
        </div>

        <div>
            <label>Our Location:</label>
            <p>123 Code Street, Cityville, India</p>
        </div>
    </div>

</body>
</html>
