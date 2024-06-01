<%-- 
    Document   : rectangle
    Created on : 22 Apr 2024, 3:29:08 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 2</title>
    </head>
    <body>
        <h2>Rectangle Area Comparison</h2>
        <form method="post">
            <table>
                <tr>
                    <td><label for="length1">Rectangle 1 Length:</label></td>
                    <td><input type="text" name="length1" id="length1"></td>
                    <td><label for="width1">Width:</label></td>
                    <td><input type="text" name="width1" id="width1"></td>
                </tr>
                <tr>
                    <td><label for="length2">Rectangle 2 Length:</label></td>
                    <td><input type="text" name="length2" id="length2"></td>
                    <td><label for="width2">Width:</label></td>
                    <td><input type="text" name="width2" id="width2"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Compare Areas"></td>
                </tr>
            </table>
        </form>

        <%
            if (request.getMethod().equals("POST")) {
                double length1 = Double.parseDouble(request.getParameter("length1"));
                double width1 = Double.parseDouble(request.getParameter("width1"));
                double length2 = Double.parseDouble(request.getParameter("length2"));
                double width2 = Double.parseDouble(request.getParameter("width2"));
                
                double area1 = length1 * width1;
                double area2 = length2 * width2;

                if (area1 > area2) {
                    out.println("<p>Rectangle 1 has a greater area than Rectangle 2.</p>");
                } 
                else if (area1 < area2) {
                    out.println("<p>Rectangle 2 has a greater area than Rectangle 1.</p>");
                } 
                else {
                    out.println("<p>Both rectangles have the same area.</p>");
                }
            }
        %>
    </body>
</html>