<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Customer</title>
    <script>
    function validateInitialBalance() {
      var initialBalance = document.getElementById("initial_balance").value;
      if (initialBalance < 1000) {
        alert("Initial balance should be at least 1000.");
        return false;
      }
      return true;
    }
  </script>   
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ffb74d, #4caf50);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .registration-container {
            background-color: #ffffff;
            background: rgba(255, 255, 255, 0.9);
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            width: 280px;
            text-align: center;
        }

        h2 {
            font-size: 1.5em;
            margin-bottom: 12px;
            color: #333;
        }

        label {
            display: block;
            text-align: left;
            margin: 6px 0 4px 0;
            font-size: 0.9em;
            color: #333;
        }

        input[type="text"],
        input[type="date"],
        textarea,
        select {
            width: calc(100% - 20px);
            padding: 6px;
            margin: 6px 0;
            border: 2px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #f9f9f9;
            color: #333;
            transition: border-color 0.3s ease;
        }

        textarea {
            resize: vertical;
            height: 60px;
        }

        input[type="submit"] {
            background: linear-gradient(135deg, #4caf50, #66bb6a);
            color: #fff;
            border: none;
            border-radius: 20px;
            padding: 8px 16px;
            font-size: 0.9em;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #43a047, #81c784);
            transform: scale(1.05);
        }

        input[type="submit"]:active {
            transform: scale(1);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2>Register Customer</h2>
        <form action="RegisterCustomerServlet" method="post">
            <label for="full_name">Full Name:</label>
            <input type="text" id="full_name" name="full_name"><br>
            <label for="address">Address:</label>
            <textarea id="address" name="address"></textarea><br>
            <label for="mobile_no">Mobile No:</label>
            <input type="text" id="mobile_no" name="mobile_no"><br>
            <label for="email_id">Email ID:</label>
            <input type="text" id="email_id" name="email_id"><br>
            <label for="account_type">Account Type:</label>
            <select id="account_type" name="account_type">
                <option value="Saving">Saving</option>
                <option value="Current">Current</option>
            </select><br>
            <label for="initial_balance">Initial Balance:</label>
            <input type="text" id="initial_balance" name="initial_balance"><br>
            <label for="date_of_birth">Date of Birth:</label>
            <input type="date" id="date_of_birth" name="date_of_birth"><br>
            <label for="id_proof">ID Proof:</label>
            <input type="text" id="id_proof" name="id_proof"><br><br>
            
             <input type="submit" value="Register" onclick="return validateInitialBalance()">    
        </form>
    </div>
</body>
</html>