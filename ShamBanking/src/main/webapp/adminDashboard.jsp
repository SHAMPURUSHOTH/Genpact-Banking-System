<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #ffa726, #66bb6a);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 400px;
        }

        .dashboard-container a {
            display: inline-block;
            background: linear-gradient(135deg, #ff7043, #ffcc80);
            color: #fff;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 1.2em;
            text-decoration: none;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin: 10px 5px;
        }

        .dashboard-container a:hover {
            background: linear-gradient(135deg, #fb8c00, #ffb74d);
            transform: scale(1.05);
        }

        .dashboard-container a:active {
            transform: scale(1);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h2>Welcome, <%= session.getAttribute("username") %></h2>
        <a href="registerCustomer.jsp">Register Customer</a>
        <a href="viewCustomer.jsp">View Customers</a>
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
