<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tell Me the Full Form</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <h2>Enter an Acronym</h2>
    <form action="index.jsp" method="post">
        <input type="text" 
        name="acronym" 
        required placeholder="e.g., RAM" />
        
        <button type="submit">Show Full Form</button>
    </form>

    <%
        // Database connection parameters
        String jdbcURL = "jdbc:mysql://localhost:3306/fullformdb";
        String dbUser = "root";
        String dbPass = "Kitten@0203";

        // Check if form was submitted
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String acronym = request.getParameter("acronym").toUpperCase();
            String fullform = "Not Found";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);

                PreparedStatement ps = conn.prepareStatement("SELECT fullform FROM acronym_table WHERE acronym = ?");
                ps.setString(1, acronym);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    fullform = rs.getString("fullform");
                }

                conn.close();
    %>
                <div class="result">
                    <h2>Full Form of <%= acronym %> is:</h2>
                    <h1><%= fullform %></h1>
                </div>
    <%
            } catch (Exception e) {
    %>
                <div class="result">
                    <h2>Error</h2>
                    <p><%= e.getMessage() %></p>
                </div>
    <%
            }
        }
    %>
</body>
</html>