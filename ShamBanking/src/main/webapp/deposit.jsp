<!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
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
            color: black;
        }

        .div{
            font-size: 2.5em;
            color : black;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .deposit-container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 300px;
        }

        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px 0;
            font-size: 1.1em;
            color: #fff;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background: linear-gradient(135deg, #66bb6a, #a5d6a7);
            color: #fff;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 1.2em;
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
    <div class="deposit-container">
        <h2>Deposit Amount</h2>
        <form id="depositForm" onsubmit="return submitDepositForm()">
    		<div class="form-group">
        	<label for="depositAmount">Amount:</label>
        	<input type="text" id="depositAmount" name="amount" required>
    		</div>
    		<input type="submit" value="Deposit" class="button">
		</form>
    </div>
</body>
</html>
