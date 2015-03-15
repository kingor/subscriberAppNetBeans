<%-- 
    Document   : allCustomer
    Created on : 24.09.2014, 11:33:27
    Author     : ASUP8
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="by.telecom.subscriberapp.Subscriber"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Все абоненты</title>
    </head>
    <body>
        <table >
            <tr>
                <td valign = "top">
                    <%@include file="Menu.jspf" %>
                </td>
                <td valign = "top">
                    <%
                        Collection<Subscriber> subscribers = (Collection<Subscriber>) request.getAttribute("subscribers");
                        if (subscribers.size() > 0) {
                            out.println("<h2>Все абоненты в базе данных:</h2>");
                            out.println("<table border='1'>");
                            out.println("<tr>");
                            out.println("<th>ФИО абонента</th>");
                            out.println("<th>Адрес абонента</th>");
                            out.println("</tr>");
                            Iterator itSubs = subscribers.iterator();
                            while (itSubs.hasNext()) {
                                Subscriber subscriber = (Subscriber) itSubs.next();
                                out.println("<tr>");
                                out.println("<td>" + subscriber.getName() + "</td>");
                                out.println("<td>" + subscriber.getAddress() + "</td>");
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
