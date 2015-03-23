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
                                                            <th class="navu width30">
                                                                <a href="subscriberSearchEdit?sort=name&order=desc&name=${name}&address=${address}">↓</a>
                                                                ФИО абонента
                                                                <a href="subscriberSearchEdit?sort=name&order=asc&name=${name}&address=${address}">↑</a>
                                                            </th>
                                                            <th class="navu width40">
                                                                <a href="subscriberSearchEdit?sort=address&order=desc&name=${name}&address=${address}">↓</a>            
                                                                Адрес
                                                                <a href="subscriberSearchEdit?sort=address&order=asc&name=${name}&address=${address}">↑</a>
                                                            </th>
                                                            <th class="navu width25"></th>
                                                        </tr>
                                                        <tr>        
                                                            <td><INPUT type="text" name="name" value="${name}" class="AllWidth"></td>
                                                            <td><INPUT type="text" name="address" value="${address}" class="AllWidth"></td>
                                                            <td class="navu width30"><INPUT type="submit" name="submit" value="Искать!" class="AllWidth"></td>
                                                        </tr>
                                                    </table>     
                                                </form>
                                                <center>
                                                    <c:if test="${!subscriberSearchEdit.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                        
                                                            <c:forEach var="subscriber" items="${subscriberSearchEdit}">
                                                                <tr>
                                                                    <td class="width30">${subscriber.name}</td>
                                                                    <td class="width40">${subscriber.address}</td>
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