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
                                                <form name="form5" method="post" action="subscriberSearchEdit">
                                                    <center>
                                                        <h2>Поиск по фамилии:</h2>
                                                    </center>
                                                    <table class="AllWidth">
                                                        <tr>
                                                            <th width="37%">ФИО Абонента</th>
                                                            <th width="40%">Адрес</th>
                                                            <th width="23%"></th>
                                                        </tr>
                                                        <tr>        
                                                            <td><INPUT type="text" name="search" style="width:100%"></td>
                                                            <td><INPUT type="text" name="address" style="width:100%"></td>
                                                            <td><INPUT type="submit" name="submit" value="Искать!" style="width:100%"></td>
                                                        </tr>
                                                    </table>     
                                                </form>
                                                <center>
                                                    <c:if test="${!subscriberSearchEdit.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <tr>
                                                                <th width="37%">ФИО абонента</th>
                                                                <th width="40%">Адрес абонента</th>
                                                                <th colspan="2" width="23%">Редактор</th>
                                                                
                                                            </tr>
                                                            <c:forEach var="subscriber" items="${subscriberSearchEdit}">
                                                                <tr>
                                                                    <td>${subscriber.name}</td>
                                                                    <td>${subscriber.address}</td>
                                                                    <td>
                                                                        <form name="form5" method="post" action="editSubscriberView">
                                                                            <input type="hidden" name="subscriberSelect" value=${subscriber.id}>
                                                                            <INPUT type="submit" name="submit" value="Редактор" style="width:100%">
                                                                        </form>
                                                                    </td>
                                                                    <td>
                                                                        <form name="form7" method="post" action="deleteSubscriber">
                                                                            <input type="hidden" name="subscriberSelect" value=${subscriber.id}>
                                                                            <INPUT type="submit" name="submit" value="Удалить" style="width:100%">
                                                                        </form>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </table>
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