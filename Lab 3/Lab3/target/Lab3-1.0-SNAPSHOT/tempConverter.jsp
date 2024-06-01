<%-- 
    Document   : tempConverter
    Created on : 22 Apr 2024, 3:23:37 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 1</title>
    </head>
    <body>
        <h2>Temperature Converter</h2>
        <form method="post">
            <table>
                <tr>
                    <td><label for="celsius">Enter Temperature in Celsius: </label></td>
                    <td><input type="text" name="celsius" id="celsius"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Convert" /></td>
                </tr>
            </table>
        </form>

        <%
            if (request.getMethod().equals("POST")) {
                double celsius;
                try {
                    celsius = Double.parseDouble(request.getParameter("celsius"));
                    double fahrenheit = (9.0 / 5.0) * celsius + 32.0;
                    out.println("<p>" + celsius + " Celsius is equal to " + fahrenheit + " Fahrenheit.</p>");
                } catch (NumberFormatException e) {
                    out.println("<p>Please enter a valid temperature.</p>");
                }
            }
        %>
    </body>
</html>