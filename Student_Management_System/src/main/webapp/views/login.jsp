<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1513077202514-c511b41bd4c7?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            position: relative;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: center; /* Center the navbar horizontally */
            align-items: center; /* Center the navbar vertically */
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1;
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

        .text-overlay {
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 70px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            z-index: 1;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            color: #333;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
            text-align: center;
            width: 300px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            margin-top: 70px;
        }

        h2 {
            color: #007FFF;
        }

        .login-container label {
            color: #007FFF;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            border-radius: 4px;
        }

        button {
            background-color: #007FFF;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }
    </style>

    <script>
        function validateForm() {
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;

            if (email.trim() === '' || password.trim() === '') {
                document.getElementById('error-message').innerText = 'Please fill in all fields.';
                return false;
            }

            return true;
        }
    </script>
</head>

<body>
    <div class="navbar">
        <a href="main">Home</a>
        <a href="SignIn">Sign In</a>
        <a href="login">Login</a>
        <a href="AboutUs">About Us</a>
        <a href="ContactUs">Contact Us</a>
    </div>

    <div class="text-overlay">
        <br><span style="color: #007FFF;">Code World</span> <br>
    </div>
    <div class="login-container">
        <h2>Login</h2>
        <form action="/loguser" method="post" onsubmit="return validateForm()">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required> <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <button type="submit">Login</button>
