<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" name="customerForm" action="LoginServlet">
                        Логин:
                        <input type="text" name="login" value="">
                        <br>
                        <br>
                        Пароль:
                        <input type="password" name="password" value="">
                        <br>
                        <input type="submit" name="submit" value="Save">
        </form>
    </body>
</html>
