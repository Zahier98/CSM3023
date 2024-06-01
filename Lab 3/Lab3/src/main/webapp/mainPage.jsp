<%-- 
    Document   : mainPage
    Created on : 22 Apr 2024, 3:09:43 am
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 6</title>
        <style>
            body {
                box-sizing: border-box;
                padding: 0;
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .main {
                width: 50%;
            }

            .main p {
                color: red;
                font-size: large;
            }
        </style>
    </head>
    <body>
        <jsp:include page="headerPage.jsp" flush="true"/>
        
        <div class="main">
            <h1>Using JSP Include Directive</h1>
            <p>
                Java Server Page (JSP) is a technology for controlling the content or appearance 
                of Web pages through the use of servlets, small programs that are specified in 
                the Web page and run in the Web server to modify the Web page before it is sent 
                to the user who requested it.
            </p>
        </div>        
        
        <jsp:include page="footerPage.jsp" flush="true"/>
    </body>
</html>