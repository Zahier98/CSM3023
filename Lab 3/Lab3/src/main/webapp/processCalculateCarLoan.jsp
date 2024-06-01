<%-- 
    Document   : processCalculateCarLoan
    Created on : 17 Apr 2024, 2:40:29 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 4</title>
        <style>
            #title {
                color: blue;
            }

            #details {
                border: 1px solid black;
                padding-left: 10px;
            }
        </style>
    </head>
    <body>
        
        <h1>Perform Car Loan Calculation</h1>

        <%
            int loanAmount = Integer.parseInt(request.getParameter("loanAmount"));
            int loanPeriod = Integer.parseInt(request.getParameter("loanPeriod"));
            double interestRate = 0;
            
            if (loanPeriod < 5)
                interestRate = 0.028;
            else
                interestRate = 0.045;
                
            double totalLoan = loanAmount + (interestRate * loanAmount * loanPeriod);
            
        %>
        
        <div id="details">
            <h2 id="title">Details of car loan:</h2>
            <h3>Loan Request : RM <%= String.format("%.2f", (double) loanAmount) %></h3>
            <h3>Period of Payment : <%= loanPeriod %></h3>
            <h3>Total Loan (+ interest) : RM <%= String.format("%.2f", totalLoan) %></h3>
        </div>

    </body>
</html>