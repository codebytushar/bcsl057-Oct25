<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<!DOCTYPE html>
<html>
<head>
    <title>Subject Details</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<main>
    <h2>Subject Details</h2>

    <!-- 1️⃣  Set up database connection -->
    <sql:setDataSource 
        var="db" 
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/subject-details1"
        user="root"
        password="adminadmin" />

    <!-- 2️⃣  Execute SQL query -->
    <sql:query dataSource="${db}" var="result">
        SELECT * FROM course_author;
    </sql:query>

    <!-- 3️⃣  Display results -->
    <table border="1">
        <tr>
            <th>Topic</th>
            <th>Block Number</th>
            <th>Author Name</th>
        </tr>

        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td>${row.topic}</td>
                <td>${row.block_number}</td>
                <td>${row.author_name}</td>
            </tr>
        </c:forEach>
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
