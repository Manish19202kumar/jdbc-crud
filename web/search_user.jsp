<%@ page import="java.sql.*" %>

<%
    String username = request.getParameter("username");

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ws6", "root", "Root123");

        String sql = "SELECT * FROM users WHERE username=?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        rs = stmt.executeQuery();

        // Check if user exists
        if (rs.next()) {
            out.println("<h2>User Details</h2>");
            out.println("<p>Name: " + rs.getString("name") + "</p>");
            out.println("<p>Post: " + rs.getString("post") + "</p>");
            out.println("<p>Salary: " + rs.getDouble("salary") + "</p>");
            out.println("<p>Username: " + rs.getString("username") + "</p>");
            out.println("<p>Password: " + rs.getString("password") + "</p>");
        } else {
            out.println("<p>User with username '" + username + "' not found.</p>");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
