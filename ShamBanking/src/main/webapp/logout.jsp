<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Logout</title>
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
            text-align: center;
        }

        .logout-message {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            width: 300px;
        }

        .logout-message h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .logout-message p {
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        .logout-message .loader {
            border: 8px solid #f3f3f3; /* Light grey */
            border-radius: 50%;
            border-top: 8px solid #66bb6a; /* Green */
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
            margin: 20px auto;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="logout-message">
        <h2>Logging Out...</h2>
        <p>You are being logged out. Please wait...</p>
        <div class="loader"></div>
    </div>

    <%
        session.invalidate();
        response.setHeader("Refresh", "2; URL=login.jsp"); // Redirects after 2 seconds
    %>
</body>
</html>