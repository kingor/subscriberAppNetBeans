<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page import="java.util.List"%>
<%@page import="by.telecom.subscriberapp.Phone"%>
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
    </head>
    <body bgcolor="#e4e8ea">
        <div align="center">
            <%@include file="include/Header.jspf" %>

            <table width=860 cellspacing=0 cellpadding=0 border=0>
                <tr>
                    <%@include file="include/menu_user.jspf" %>

                    <td width=7 bgcolor="#e4e8ea"></td>
                    <td width=643  align="center">
                        <table width=643 cellspacing=0 cellpadding=1 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=643 cellspacing=0 cellpadding=20 border=0>
                                        <tr>
                                            <td class="content">
                                                <center>
                                                    <h2>Подробные данные:</h2>
                                                    <table class=AllWidth>
                                                        <tr>
                                                            <td width="20%">ФИО абонента:</td> 
                                                            <td class="textBold">${subscriber.name}</td>
                                                        </tr>
                                                        <tr><td>Адрес абонента:</td> 
                                                            <td class="textBold">${subscriber.address}</td></tr>
                                                    </table>
                                                    <c:if test="${!phones.isEmpty()}">
                                                        <h2>Технические параметры:</h2>
                                                        <table class="AllWidth" border="1">
                                                            <tr>
                                                                <th>Номер</th>
                                                                <th>Гром полоса</th>
                                                                <th>Защитная полоса</th>
                                                                <th>ADSL</th>
                                                            </tr>
                                                            <c:forEach var="phone" items="${phones}">
                                                                <tr>
                                                                    <td>${phone.number}</td>
                                                                    <td>${phone.band}</td>
                                                                    <td>${phone.security}</td>
                                                                    <td>${phone.adsl}</td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </c:if>
                                                    <c:if test="${phones.isEmpty()}">
                                                        <h1>Данных для текущего пользователя нет!</h1>
                                                    </c:if>
                                                </center>
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <%@include file="include/Footer.jspf" %>
        </div>
        <br> 
    </body>
</html>