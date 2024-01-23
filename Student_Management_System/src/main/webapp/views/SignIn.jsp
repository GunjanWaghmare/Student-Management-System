<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            overflow: hidden;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            width: 100%;
            display: flex;
            justify-content: center;
            position: fixed;
            top: 0;
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

        .background-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -50;
            background-image: url('https://cdn.pixabay.com/photo/2017/09/05/10/20/business-2717066_1280.jpg');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            position: relative;
            z-index: 2;
            text-align: center;
            margin: 20px auto;
            width: 30%;
            padding: 20px;
            background-color: silver;
            border-radius: 8px;
            box-shadow: 0 0 90px rgba(5, 5, 9, 0.2);
        }

        h2 {
            color: Brown;
            font-size: 2em;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            color: Brown;
            margin-top: 10px;
            text-align: left;
        }

        input {
            margin: 10px 0;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }

        input:focus {
            border-color: #405de6;
        }

        button {
            margin-top: 20px;
            padding: 10px;
            background-color: Brown;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: red;
        }

        a.add {
            margin-top: 20px;
            padding: 10px;
            background-color: #405de6;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
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

    <div class="background-image">
    </div>

    <div class="container">
        
        <div class="success-message">
     </div>
        <h2>Sign In</h2>
        <form action="Signupsuccess" method="post">

            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" required pattern="[A-Za-z\s]{3,50}">

            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" required pattern="[A-Za-z\s]{3,50}">

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Password@123" required>

            <button type="submit">Sign In</button>
        </form>
    </div>

</body>

</html>
