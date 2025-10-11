<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <main>
            <h2>Subject Details</h2>
            <table>
                <tr>
                    <th>Topic</th>
                    <th>Block Number</th>
                    <th>Author Name</th>
                </tr>
                <%
                    String url = "jdbc:mysql://localhost:3306/subject-details1";
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
                    <td><%= block%></td>
                    <td><%= author%></td>
                </tr>

                <%
                        }

                    } catch (Exception e) {

                    }
                %>
            </table>

        </main>
        <footer>
            <nav>
                <a href="home.html">Home</a>
                <a href="subject-list.jsp">Subject List</a>
                <a href="review.html">Review</a>
            </nav>
        </footer>

    </body>
</html>
