<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fee Details | Galgotias University</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background: #343a40;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
        }
        .container {
            width: 90%;
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        h2 {
            text-align: center;
            color: #444;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            background: white;
        }
        th, td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: center;
        }
        th {
            background: #007bff;
            color: white;
        }
        .notice {
            background: #ffcc00;
            padding: 15px;
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            color: #333;
            border-radius: 5px;
            margin-top: 20px;
        }
        .total {
            font-weight: bold;
            color: #dc3545;
            text-align: right;
            padding: 15px;
            font-size: 18px;
            border-top: 2px solid #dee2e6;
        }
        .footer {
            text-align: center;
            padding: 15px;
            background: #343a40;
            color: white;
            font-size: 14px;
            margin-top: 20px;
        }
    </style>
    <script>
        function calculateTotal() {
            let totalAmount = 0;
            let amountToPay = 0;

            let amounts = document.querySelectorAll(".amount");
            amounts.forEach(amount => {
                let value = parseInt(amount.textContent);
                totalAmount += value;
                if (value > 0) {
                    amountToPay += value;
                }
            });

            document.getElementById("totalFees").textContent = totalAmount;
            document.getElementById("amountToPay").textContent = amountToPay;
        }
    </script>
</head>
<body onload="calculateTotal()">

    <header>Galgotias University - Fee Details</header>

    <div class="container">
        <h2>All Fees (Including Miscellaneous)</h2>

        <table>
            <thead>
                <tr>
                    <th>Sr.No.</th>
                    <th>Session</th>
                    <th>Fee Type</th>
                    <th>Head Name</th>
                    <th>Amount (₹)</th>
                </tr>
            </thead>
            <tbody>
                <tr><td>1</td> <td>2023-2024</td> <td>Academic Fees</td> <td>TUITION FEE</td> <td class="amount">90000</td></tr>
                <tr><td>2</td> <td>2023-2024</td> <td>Academic Fees</td> <td>EXAM FEE</td> <td class="amount">0</td></tr>
                <tr><td>3</td> <td>2023-2024</td> <td>Academic Fees</td> <td>CAUTION MONEY - NON REFUNDABLE</td> <td class="amount">0</td></tr>
                <tr><td>4</td> <td>2023-2024</td> <td>Miscellaneous Fees</td> <td>STUDENT ID FEE MISC</td> <td class="amount">0</td></tr>
                <tr><td>5</td> <td>2023-2024</td> <td>Academic Fees</td> <td>EXCESS FEE</td> <td class="amount">0</td></tr>
                <tr><td>6</td> <td>2024-2025</td> <td>Academic Fees</td> <td>TUITION FEE</td> <td class="amount">0</td></tr>
                <tr><td>7</td> <td>2024-2025</td> <td>Academic Fees</td> <td>EXAM FEE</td> <td class="amount">0</td></tr>
                <tr><td>8</td> <td>2024-2025</td> <td>Miscellaneous Fees</td> <td>FINE FEE</td> <td class="amount">6000</td></tr>
            </tbody>
        </table>

        <p class="total">Total Fees: <span id="totalFees"></span> ₹</p>
        <p class="total">Amount to Pay: <span id="amountToPay"></span> ₹</p>

        <div class="notice">
            <p>⚠️ Important: Fee payment is only accepted at the designated **University Fee Counter**.</p>
        </div>
    </div>

    <div class="footer">
        © 2025 Galgotias University | All Rights Reserved
    </div>

</body>
</html>
