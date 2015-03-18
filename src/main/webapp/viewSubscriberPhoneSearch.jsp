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
                                                            <th width="15%">Номер</th>
                                                            <th width="20%">Гром полоса</th>
                                                            <th width="15%">Защита</th>
                                                            <th width="10%">Adsl</th>
                                                            <th width="40%"></th>
                                                        </tr>
                                                        <tr>
                                                            <td width="15%"> <INPUT type="text" name="number" style="width:100%"></td>
                                                            <td width="20%"> <INPUT type="text" name="band" style="width:100%"></td>
                                                            <td width="15%"> <INPUT type="text" name="security" style="width:100%"></td>
                                                            <td width="10%"> <INPUT type="text" name="adsl" style="width:100%"></td>
                                                            <td width="40%"><INPUT type="submit" name="submit" value="Искать!" style="width:100%"></td>
                                                        </tr>
                                                    </table> 
                                                </form>
                                                    <c:if test="${!subscriberPhoneSearch.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <tr>
                                                                <th width="15%">Номер</th>
                                                                <th width="20%">Гром полоса</th>
                                                                <th width="15%">Защитная полоса</th>
                                                                <th width="10%">ADSL</th>
                                                                <th width="40%">ФИО абонента</th>
                                                            </tr>
                                                            <c:forEach var="phone" items="${subscriberPhoneSearch}">
                                                                <tr>
                                                                    <td>${phone.number}</td>
                                                                    <td>${phone.band}</td>
                                                                    <td>${phone.security}</td>
                                                                    <td>${phone.adsl}</td>
                                                                    <td>${phone.subscriber.name}</td>
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