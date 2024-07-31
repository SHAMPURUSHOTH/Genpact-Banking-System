<%@ page import="java.util.*, java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Customers</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ffb74d, #4caf50);
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #fff;
            margin: 20px 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        table {
            border-collapse: collapse;
            width: 90%;
            max-width: 900px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #ff5722;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #ff5722;
            text-decoration: none;
            font-size: 1.1em;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Customer List</h2>
        <table>
            <tr>
                <th>Customer ID</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Mobile No</th>
                <th>Email ID</th>
                <th>Account Type</th>
                <th>Initial Balance</th>
                <th>Date of Birth</th>
                <th>Account No</th>
                <th>Password</th>
            </tr>
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Sham12@#");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM Customer");
                    
                    while (rs.next()) {
                        out.println("<tr>");
                        out.println("<td>" + rs.getInt("customer_id") + "</td>");
                        out.println("<td>" + rs.getString("full_name") + "</td>");
                        out.println("<td>" + rs.getString("address") + "</td>");
                        out.println("<td>" + rs.getString("mobile_no") + "</td>");
                        out.println("<td>" + rs.getString("email_id") + "</td>");
                        out.println("<td>" + rs.getString("account_type") + "</td>");
                        out.println("<td>" + rs.getDouble("initial_balance") + "</td>");
                        out.println("<td>" + rs.getDate("date_of_birth") + "</td>");
                        out.println("<td>" + rs.getString("account_no") + "</td>");
                        out.println("<td>" + rs.getString("password") + "</td>");
                        out.println("</tr>");
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
        <a href="adminDashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>