<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
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
    }

    div {
        background-color: rgba(255, 255, 255, 0.1);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        text-align: center;
        width: 300px;
    }

    a {
        display: block;
        margin: 15px 0;
        padding: 15px;
        text-decoration: none;
        color: #fff;
        font-size: 1.2em;
        border-radius: 8px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    a:hover {
        transform: scale(1.05);
    }

    .admin {
        background-color: #28a745;
    }

    .customer {
        background-color: #dc3545;
    }

    .admin:hover {
        background-color: #218838;
    }

    .customer:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
<h2>Welcome to Banking System</h2>
<div>
    <a href="login.jsp" target="_blank" class="admin">
         Admin Page
    </a>
    <a href="customerLogin.jsp" target="_blank" class="customer">
         Customer Page
    </a>
</div>
</body>
</html>