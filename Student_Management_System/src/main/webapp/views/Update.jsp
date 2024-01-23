<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
 body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    text-align: center;
    background-image: url('https://img.freepik.com/free-photo/abstract-luxury-sweet-pastel-pink-tone-wall-floor-tile-glass-seamless-pattern-mosaic-background-texture-furniture-material_1258-72222.jpg?w=740&t=st=1705491554~exp=1705492154~hmac=685fb5a171f54ecc73738236ec280b9cbe598cf6bd518b5af5a7e82f28d65f21'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
}


  h1 {
    color: black;
  }

  form {
    background-color: #fff;
    max-width: 400px;
    margin: 20px auto;
    padding: 10px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
    color: maroon;
  }

  input, select {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
  }

  button {
    background-color: maroon;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
  }

  button:hover {
    background-color: #45a049;
  }
</style>
<body>
    <h1>EDIT PAGE</h1>
    <h2>We Are Updating The Details Of ${empp.name}</h2>
    <form action="/Update/${id}" method="post">
        <label for="name"> NAME</label>
        <input type="text" id="name" name="name" value="${empp.name}" required pattern="[A-Za-z\s]{3,50}">
        <br> 
        <label for="city"> CITY</label>
        <input type="text" id="city" name="city" value="${empp.city}" required pattern="[A-Za-z\s]{3,50}">
        <br>
        <label for="contact"> CONTACT</label>
        <input type="text" id="contact" name="contact" value="${empp.contact}" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number">
        <br>
        <label for="course"> COURSE</label>
        <select id="course" name="course" required>
            <option value="Web Development" ${empp.course == 'Web Development' ? 'selected' : ''}>Web Development</option>
            <option value="Full Stack Development (Java)" ${empp.course == 'Full Stack Development (Java)' ? 'selected' : ''}>Full Stack Development (Java)</option>
            <option value="Python Full Stack Development" ${empp.course == 'Python Full Stack Development' ? 'selected' : ''}>Python Full Stack Development</option>
            <option value="Data Science" ${empp.course == 'Data Science' ? 'selected' : ''}>Data Science</option>
        </select>
        <br> 
        <label for="fees"> FEES</label>
        <input type="text" id="fees" name="fees" value="${empp.fees}">
        <br>
        <button type="submit">Update</button>
    </form>
</body>
</html>
