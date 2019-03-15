<%-- 
    Document   : logout
    Created on : Sep 18, 2017, 8:30:28 PM
    Author     : PUNEIEI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout!!</title>
    </head>
    <body>
        <%session.invalidate();
        response.sendRedirect("Login.jsp");%>
    </body>
</html>
