<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="by.telecom.subscriberapp.Subscriber"%>
<%@page import="by.telecom.subscriberapp.Phone"%>
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
                                                <center>
                                                    <%
                                                        Collection<Phone> phones = (Collection<Phone>) request.getAttribute("subscriberPhone");
                                                        if (phones.size() > 0) {
                                                            out.println("<h2>Технические параметры абонентов:</h2>");
                                                            out.println("<table border='1'>");
                                                            out.println("<tr>");
                                                            out.println("<th>ФИО абонента</th>");
                                                            out.println("<th>Адрес абонента</th>");
                                                            out.println("</tr>");
                                                            Iterator itSubs = phones.iterator();
                                                            while (itSubs.hasNext()) {
                                                                Phone phone = (Phone) itSubs.next();
                                                                out.println("<tr>");
                                                                out.println("<td>" + phone.getSubscriber().getName()+ "</td>");
                                                                out.println("<td>" + phone.getNumber()+ "</td>");
                                                                out.println("<td>" + phone.getBand()+ "</td>");
                                                                out.println("<td>" + phone.getSecurity()+ "</td>");
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