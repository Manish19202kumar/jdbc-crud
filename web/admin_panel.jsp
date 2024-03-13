<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("loggedIn") == null || !(Boolean) session.getAttribute("loggedIn")) {
        response.sendRedirect("index.html");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 30px;
        }
        h3 {
            color: #555;
            font-size: 24px;
            margin-bottom: 20px;
        }
        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        li {
            margin: 10px;
            flex: 1 1 calc(50% - 20px); /* Flex item properties for 2x2 layout */
            max-width: calc(50% - 20px);
        }
        .card {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease; /* Transition on background color change */
        }
        .card:hover {
            background-color: #f0f0f0; /* Change background color on hover */
        }
        a {
            text-decoration: none;
            color: #333;
            font-size: 18px;
        }
        .button {
            display: inline-block;
            background-color: #0066cc;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }
        .button:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, Admin!</h2>
        <h3>User Management</h3>
        <ul>
            <li>
                <div class="card">
                    <a href="registerUser.html">Register New User</a>
                </div>
            </li>
            <li>
                <div class="card">
                    <a href="removeUser.html">Remove User</a>
                </div>
            </li>
            <li>
                <div class="card">
                    <a href="modifyUser.html">Modify User</a>
                </div>
            </li>
            <li>
                <div class="card">
                    <a href="searchUser.html">Search User</a>
                </div>
            </li>
        </ul>
        <button onclick="location.href='logout.jsp'" class="button">Logout</button>
    </div>
</body>
</html>
