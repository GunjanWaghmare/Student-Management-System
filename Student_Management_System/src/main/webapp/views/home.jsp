<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('https://img.freepik.com/free-vector/colleagues-analyzing-growth-charts_23-2148856192.jpg?w=996&t=st=1705489657~exp=1705490257~hmac=2a0516b5e37d8adde89b2e6e6648459846ea1efbc35e28173c5e540dcb4ebd10') no-repeat center center fixed;
            background-size: cover;
        }

        .container {
            text-align: center;
            background-color: pink;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            text-decoration: none;
            background-color: mediumvioletred;
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Code World Student Data</h1>
        <a href="AddStudent" class="button">Add Students</a>
        <a href="ListAllData" class="button">View Students</a>
    </div>
</body>
</html>