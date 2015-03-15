<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="by.telecom.subscriberapp.Subscriber"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title></title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <META content="text/html; charset=windows-1251" http-equiv=Content-Type>
        <LINK href="main3.css" type=text/css 
              rel=stylesheet>
    </head>
    <body bgcolor="#e4e8ea">
        <div align="center">
            <%@include file="Header.jspf" %>

            <table width=760 cellspacing=0 cellpadding=0 border=0>
                <tr>
                    <%@include file="menu_user.jspf" %>

                    <td width=7 bgcolor="#e4e8ea"></td>
                    <td width=543  align="center">
                        <table width=543 cellspacing=0 cellpadding=1 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=543 cellspacing=0 cellpadding=20 border=0>
                                        
                                        <tr>
                                            <td class="content">
                                                <form name="form5" method="post" action="">
                                                    <center>
                                                        <table width="300">
                                                            <tr>
                                                                <td colspan="4">
                                                                    <h2>Все абоненты в базе данных:</h2>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <p>Поиск:</p>
                                                                </td>
                                                                <td> <INPUT type="text" name="search" size="20">
                                                                </td>
                                                                <td>
                                                                    <INPUT type="submit" name="submit" value="Искать!">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        
                                                </form>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="content">
                                                <center>
                                                    <%
                                                        Collection<Subscriber> subscribers = (Collection<Subscriber>) request.getAttribute("subscriberSearch");
                                                        if (subscribers.size() > 0) {
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
                                                </center>
                                            </td>
                                        </tr>

                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>
            <%@include file="Footer.jspf" %>
        </div>
        <br> 
    </body>
</html>