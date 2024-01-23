<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Code World Training Institute</title>
    <style>
        body {
        background: url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center fixed;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: center;
            color: #333;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: center; 
            align-items: center; 
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

        h1 {
            color: #333;
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-top: 20px; /* Added margin-top for better spacing */
        }

        p {
            line-height: 1.6;
            text-align: justify;
            margin-bottom: 20px; /* Added margin-bottom for better spacing */
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            margin-top: 35px; 
            background-color: rgba(255, 255, 255, 0.9); /* Adjusted background color opacity */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3); /* Adjusted box shadow */
        }

        .course-list {
            list-style-type: none;
            padding: 0;
        }

        .course-list li {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #ecf0f1;
            border-radius: 8px; /* Increased border-radius for a softer look */
        }

        .course-title {
            font-weight: bold;
            color: #e74c3c;
            font-size: 18px;
        }

        .course-description {
            color: #555;
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

    <div class="container">
        <h1>Welcome to Code World Training Institute</h1>

        <p>
            Code World Training Institute is a leading provider of high-quality coding education. Our institute is dedicated to empowering individuals with the skills and knowledge needed to thrive in the rapidly evolving field of technology.
        </p>

        <h2>Our Mission</h2>

        <p>
            At Code World, our mission is to make quality coding education accessible to everyone. We believe in fostering a learning environment that encourages creativity, critical thinking, and problem-solving skills.
        </p>

        <h2>Why Choose Code World?</h2>

        <p>
            <strong>Experienced Instructors:</strong> Our team of experienced instructors is passionate about teaching and is committed to helping you succeed in your coding journey.
        </p>

        <p>
            <strong>Comprehensive Curriculum:</strong> We offer a comprehensive curriculum that covers a wide range of programming languages and technologies, ensuring you are well-prepared for the demands of the industry.
        </p>

        <p>
            <strong>Hands-On Learning:</strong> Our courses emphasize hands-on learning, providing you with practical experience to reinforce theoretical knowledge.
        </p>

        <h2>Our Courses</h2>

        <ul class="course-list">
            <li>
                <span class="course-title">Web Development Bootcamp</span>
                <p class="course-description">
                    Master the art of building modern and responsive websites using the latest web technologies.
                </p>
            </li>
            <li>
                <span class="course-title">Full Stack Development Java</span>
                <p class="course-description">
                    Learn the basics of Java programming and build a strong foundation for developing Java applications.
                </p>
            </li>
            <li>
                <span class="course-title">Python Full Stack Development</span>
                <p class="course-description">
                    Explore the world of full-stack development using Python, covering both front-end and back-end technologies.
                </p>
            </li>
            <li>
                <span class="course-title">Data Science</span>
                <p class="course-description">
                    Dive into the exciting field of data science, learning how to analyze and interpret complex data sets.
                </p>
            </li>
        </ul>
    </div>

</body>
</html>
