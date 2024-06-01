<%-- 
    Document   : arrayList
    Created on : 17 Apr 2024, 3:02:09 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 5</title>
        <style>
            p {
                color: blue;
            }
        </style>
    </head>
    <body>
        
        <h1>Use JSP Page Directive</h1>
        <%
            ArrayList<String> studentList = new ArrayList<>();
            
            studentList.add("Mohamad Azam");
            studentList.add("Peter Chong");
            studentList.add("Rahimah Mansor");
            studentList.add("Sri Devi");
            studentList.add("Ng Hue Ween");
            studentList.add("S. Nagarajan");

            out.println("<p>The number of records in ArrayList are " + studentList.size() + "</p>");

            for (int i = 0; i < studentList.size(); i++) {
                out.println("<p>Record " + (i + 1) + " is " + studentList.get(i) + "</p>");
            }
        %>       
    </body>
</html>