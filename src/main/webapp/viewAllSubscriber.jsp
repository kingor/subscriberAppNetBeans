<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="by.telecom.subscriberapp.Subscriber"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title></title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <META content="text/html; charset=windows-1251" http-equiv=Content-Type>
        <LINK href="style/main3.css" type=text/css 
              rel=stylesheet>
  </style>
    </head>
    <body bgcolor="#e4e8ea">
        <div align="center">
            <%@include file="include/Header.jspf" %>

            <table width=860 cellspacing=0 cellpadding=0 border=0>
                <tr>
                    <%@include file="include/menu.jspf" %>

                    <td width=7 bgcolor="#e4e8ea"></td>
                    <td width=643  align="center">
                        <table width=643 cellspacing=0 cellpadding=1 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=643 cellspacing=0 cellpadding=20 border=0>
                                        <tr>
                                            <td class="content">
                                                <center>
                                                    <h2>Все абоненты в базе данных:</h2>
                                                    <table class="AllWidth" border="1">
                                                        <tr>
                                                                <th width="40%">ФИО абонента</th>
                                                                <th>Адрес абонента</th>
                                                                <th width="5%">Подробнее</th>
                                                            </tr>
                                                        <c:forEach var="subscriber" items="${subscribers}">
                                                            <tr>
                                                                <td>${subscriber.name}</td>
                                                                <td>${subscriber.address}</td>
                                                                <td>
                                                                    <form name="form5" method="post" action="subscriberFull">
                                                                        <input type="hidden" name="subscriberSelect" value=${subscriber.id}>
                                                                        <INPUT type="submit" name="submit" value="Подробнее">
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </center>
                                            </td>
                                        </tr>

                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>
            <%@include file="include/Footer.jspf" %>
        </div>
        <br> 
    </body>
</html>