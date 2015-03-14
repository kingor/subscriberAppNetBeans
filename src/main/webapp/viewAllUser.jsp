<%-- 
    Document   : allCustomer
    Created on : 24.09.2014, 11:33:27
    Author     : ASUP8
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="by.telecom.subscriberapp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Все заказчики</title>
    </head>
    <body>
        <table >
            <tr>
                <td valign = "top">
                    <%@include file="Menu.jspf" %>
                </td>
                <td valign = "top">
                    <%
                        Collection<User> users = (Collection<User>) request.getAttribute("users");
                        if (users.size() > 0) {
                            out.println("<h2>Customers in database:</h2>");
                            out.println("<table border='1'>");
                            out.println("<tr>");
                            out.println("<th>Имя пользователя</th>");
                            out.println("<th>Логин</th>");
                            out.println("<th>Пароль</th>");
                            out.println("<th>Категория</th>");
                            out.println("</tr>");
                            Iterator itCust = users.iterator();
                            while (itCust.hasNext()) {
                                User user = (User) itCust.next();
                                out.println("<tr>");
                                out.println("<td>" + user.getName()+ "</td>");
                                out.println("<td>" + user.getLogin()+ "</td>");
                                out.println("<td>" + user.getPassword()+ "</td>");
                                out.println("<td>" + user.getCategory()+ "</td>");
                                out.println("</tr>");
                            }
                            out.println("</table>");
                        }
                    %>
                </td>
            </tr>
        </table>
    </body>
</html>
