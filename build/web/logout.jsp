<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
    <h2>Logging Out...</h2>
    <%-- Destroy session and redirect to login page --%>
    <% session.invalidate(); %>
    <% response.sendRedirect("index.html"); %>
</body>
</html>
