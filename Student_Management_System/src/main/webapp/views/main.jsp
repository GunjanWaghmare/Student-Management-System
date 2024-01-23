<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Code World</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            position: relative;
            text-align: center;
            color: #fff;
        }

        img {
            width: 100%;
            max-height: 94vh;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.5));
        }

        .text-overlay {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 3em;
            font-weight: bold;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
        }

        .appealing-line {
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 1.5em;
            font-weight: bold;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: center; /* Center the navbar horizontally */
            align-items: center; /* Center the navbar vertically */
        }

        .navbar a {
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
    <a href="#">Home</a>
    <a href="SignIn">Sign In</a>
    <a href="login">Login</a>
    <a href="AboutUs">About Us</a>
    <a href="ContactUs">Contact Us</a>
</div>

<div class="container">
    <img src="https://cdn.pixabay.com/photo/2015/01/09/11/11/office-594132_1280.jpg" alt="Description of your image">
    <div class="overlay"></div>

    <div class="text-overlay">WELCOME <br> TO <br>CODE WORLD</div>
    
    <div class="appealing-line">100% Job Guarantee. Enroll Now! 4000+ students placed in renowned IT companies</div>
</div>

</body>
</html>
