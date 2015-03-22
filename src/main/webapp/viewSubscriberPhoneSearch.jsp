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
                    <%@include file="include/menu.jspf" %>

                    <td width=7 bgcolor="#e4e8ea"></td>
                    <td width=643  align="center">
                        <table width=643 cellspacing=0 cellpadding=1 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=643 cellspacing=0 cellpadding=20 border=0>                          
                                        <tr>                                          
                                            <td class="content">
                                                <form name="form5" method="post" action="subscriberPhoneSearch">
                                                    <center>
                                                        <h2>Поиск по техническим параметрам:</h2>
                                                    </center>
                                                    <table class="AllWidth">
                                                        <tr>
                                                            <th class="navu width15">
                                                                <a href="subscriberPhoneSearch?sort=number&order=desc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↓</a>
                                                                Номер
                                                                <a href="subscriberPhoneSearch?sort=number&order=asc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="navu width25">
                                                                <a href="subscriberPhoneSearch?sort=band&order=desc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↓</a>
                                                                Гром полоса
                                                                <a href="subscriberPhoneSearch?sort=band&order=asc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="navu width15">
                                                                <a href="subscriberPhoneSearch?sort=security&order=desc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↓</a>
                                                                Защита
                                                                <a href="subscriberPhoneSearch?sort=security&order=asc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="navu width15">
                                                                <a href="subscriberPhoneSearch?sort=adsl&order=desc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↓</a>
                                                                Adsl
                                                                <a href="subscriberPhoneSearch?sort=adsl&order=asc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="navu width30">
                                                                <a href="subscriberPhoneSearch?sort=name&order=desc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↓</a>
                                                                ФИО
                                                                <a href="subscriberPhoneSearch?sort=name&order=asc&number=${number}&band=${band}&security=${security}&adsl=${adsl}&name=${name}">↑</a>
                                                            </th>
                                                            <th class="navu width15"></th>
                                                        </tr>
                                                        <tr>
                                                            <td > <INPUT type="text" name="number" value="${number}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="band" value="${band}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="security" value="${security}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="adsl" value="${adsl}" class="AllWidth"></td>
                                                            <td > <INPUT type="text" name="name" value="${name}" class="AllWidth"></td>
                                                            <td><INPUT type="submit" name="submit" value="Искать!" class="AllWidth"></td>
                                                        </tr>
                                                    </table> 
                                                </form>
                                                    <c:if test="${!subscriberPhoneSearch.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <c:forEach var="phone" items="${subscriberPhoneSearch}">
                                                                <tr>
                                                                    <td class="width15">${phone.number}</td>
                                                                    <td class="width25">${phone.band}</td>
                                                                    <td class="width15">${phone.security}</td>
                                                                    <td class="width15">${phone.adsl}</td>
                                                                    <td class="width30">${phone.subscriber.name}</td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
                                                    </c:if>
                                                
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