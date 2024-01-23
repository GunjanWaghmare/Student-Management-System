<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<style>
   body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    background-image: url('https://img.freepik.com/free-vector/yellow-orange-gradient-abstract-background_53876-62624.jpg?w=740&t=st=1705490369~exp=1705490969~hmac=368a41c13d3eddc25a27c8520eda71fa2323fc73d42e2d6ae34c2a8b8e27df26');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

html, body {
    height: 100%;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


    h1 {
    	text-align : center;
        color: black;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: indianred;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a.delete {
        text-decoration: none;
        padding: 5px 10px;
        background-color: #dc3545; 
        color: white;
        border-radius: 3px;
    }

    a.delete:hover {
        background-color: #bd2130;
    }

    a.update {
        text-decoration: none;
        padding: 5px 10px;
        background-color: #28a745; 
        color: white;
        border-radius: 3px;
    }

    a.update:hover {
        background-color: #218838;
    }
    
    a.add {
        text-decoration: none;
        padding: 10px 10px;
        background-color: indianred; 
        color: white;
        border-radius: 5px;
        display: inline-block;
        margin-top: 0px;
        
        
    }

    a.add:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
  
    <h1>STUDENT DETAILS</h1>
    <a class="add" href="AddStudent">Add Student</a>
    <a class="add" href="main">Home</a>
    <table>
        <tr>
            <th>STUDENT NAME</th>
            <th>STUDENT CITY</th>
            <th>STUDENT CONTACT</th>
            <th>STUDENT COURSE</th>
            <th>STUDENT FEES</th>
            <th>UPDATE</th>
            <th>DELETE</th>
        </tr>
        <c:forEach var="emp" items="${studentList}">
            <tr>
                <td>${emp.name}</td>
                <td>${emp.city}</td>
                <td>${emp.contact}</td>
                <td>${emp.course}</td>
                <td>${emp.fees}</td>
                <td>
                    <a class="update" href='<c:url value="/edit/${emp.id}"/>'>Update</a>
                </td>
                <td>
                    <a class="delete" href='<c:url value="/delete/${emp.id}"/>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>