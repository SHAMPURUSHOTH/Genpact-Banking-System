<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Close Account</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
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

        form {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 320px;
        }

        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px 0;
            font-size: 1.1em;
            color: #fff;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        }

        input[type="submit"] {
            background: linear-gradient(135deg, #dc3545, #ff6f61);
            color: #fff;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-right: 10px;
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #c82333, #e55351);
            transform: scale(1.05);
        }

        input[type="submit"]:active {
            transform: scale(1);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        a {
            display: inline-block;
            background: linear-gradient(135deg, #28a745, #85d8ce);
            color: #fff;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 1.2em;
            text-decoration: none;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        a:hover {
            background: linear-gradient(135deg, #218838, #6dc9b8);
            transform: scale(1.05);
        }

        a:active {
            transform: scale(1);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        .red-button {
            background: linear-gradient(135deg, #dc3545, #ff6f61);
        }

        .red-button:hover {
            background: linear-gradient(135deg, #c82333, #e55351);
        }
    </style>
</head>
<body>
    <h2>Close Account</h2>
    <form action="CloseAccountServlet" method="post">
        <label for="confirm">Are you sure you want to close your account?</label><br><br>
		<a href="customerLogin.jsp">Yes</a>
        <a href="customerDashboard.jsp" class="red-button">No</a>
    </form>
</body>
</html>
