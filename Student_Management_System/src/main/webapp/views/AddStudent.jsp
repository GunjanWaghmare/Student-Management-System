<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Information Form</title>
    <style>
        body {
            background: url('https://img.freepik.com/free-vector/blue-futuristic-networking-technology_53876-97395.jpg?w=996&t=st=1705489862~exp=1705490462~hmac=ff870c27f767aec4423fd67cd307192f995ed7a3b11ff6b9f13f8a64e97e7cea') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }

        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            box-sizing: border-box;
        }

        h2 {
            color: #3498db;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            margin: 10px 0;
            color: #333;
            display: block;
            text-align: left;
        }

        input, select {
            padding: 10px;
            margin-bottom: 15px;
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #3498db;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #2980b9;
        }

        button {
            padding: 12px 24px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }

        a {
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin: 10px;
            color: #fff;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .add, .add1 {
            background-color: #3498db;
        }

        .add:hover, .add1:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Information Form</h2>
        <form action="Addsuccess" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required pattern="[A-Za-z\s]{3,50}">

            <label for="city">City:</label>
            <input type="text" id="city" name="city" required pattern="[A-Za-z\s]{3,50}">

            <label for="contact">Contact:</label>
            <input type="text" id="contact" name="contact" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number">

            <label for="course">Course:</label>
            <select id="course" name="course" required>
                <option value="" disabled selected>Select a course</option>
                <option value="Web Development">Web Development</option>
                <option value="Full Stack Development (Java)">Full Stack Development (Java)</option>
                <option value="Python Full Stack Development">Python Full Stack Development</option>
                <option value="Data Science">Data Science</option>
            </select>

            <label for="fees">Fees:</label>
            <input type="text" id="fees" name="fees" required>

            <button type="submit">Submit</button>
        </form>
        <a class="add" href="main">Home</a>
        <a class="add1" href="ListAllData">View Data</a>
    </div>
</body>
</html>
