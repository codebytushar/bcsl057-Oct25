<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Subject List</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f8f8f8; }
        table {
            border-collapse: collapse;
            width: 60%;
            margin: 40px auto;
            background: #fff;
        }
        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #e0e0e0;
        }
        h2 { text-align: center; }
    </style>
</head>
<body>
    <h2>Subject Details</h2>
    <table>
        <tr>
            <th>Topic</th>
            <th>Block Number</th>
            <th>Author Name</th>
        </tr>

        <%
            String url = "jdbc:mysql://localhost:3306/subject-details";
            String user = "root";
            String password = "adminadmin"; // change this!

            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, user, password);
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM course_author");

                while (rs.next()) {
                    String topic = rs.getString("topic");
                    String block = rs.getString("block_number");
                    String author = rs.getString("author_name");
        %>
                    <tr>
                        <td><%= topic %></td>
                        <td><%= block %></td>
                        <td><%= author %></td>
                    </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='3'>Error: " + e.getMessage() + "</td></tr>");
            } finally {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
    </table>
</body>
</html>
