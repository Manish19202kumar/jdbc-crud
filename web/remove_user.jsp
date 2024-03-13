<%@ page import="java.sql.*" %>

<%
    int userId = Integer.parseInt(request.getParameter("userId"));

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ws6", "root", "Root123");

        String sql = "DELETE FROM users WHERE id=?";
        stmt = conn.prepareStatement(sql);
        stmt.setInt(1, userId);
        stmt.executeUpdate();

        response.sendRedirect("admin_panel.jsp"); // Redirect to admin panel after removal
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
