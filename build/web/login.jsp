<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Dummy credentials for demonstration
    String adminUsername = "admin";
    String adminPassword = "admin123";

    if (username.equals(adminUsername) && password.equals(adminPassword)) {
        session.setAttribute("loggedIn", true);
        response.sendRedirect("admin_panel.jsp");
    } else {
        out.println("Invalid credentials. Please try again.");
    }
%>
