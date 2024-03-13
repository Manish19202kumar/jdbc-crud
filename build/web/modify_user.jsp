<%@ page import="java.sql.*" %>

<%
    int userId = Integer.parseInt(request.getParameter("userId"));
    String name = request.getParameter("name");
    String post = request.getParameter("post");
    double salary = Double.parseDouble(request.getParameter("salary"));
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ws6", "root", "Root123");

        String sql = "UPDATE users SET name=?, post=?, salary=?, username=?, password=? WHERE id=?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, name);
        stmt.setString(2, post);
        stmt.setDouble(3, salary);
        stmt.setString(4, username);
        stmt.setString(5, password);
        stmt.setInt(6, userId);
        stmt.executeUpdate();

        response.sendRedirect("admin_panel.jsp"); // Redirect to admin panel after modification
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
