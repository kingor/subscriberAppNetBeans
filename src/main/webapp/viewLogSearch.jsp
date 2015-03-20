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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                                <form name="form5" method="post" action="logSearch">
                                                    <center>
                                                        <h2>Просмотр журнала событий:</h2>
                                                    </center>
                                                    <table class="AllWidth">
                                                        <tr>
                                                            <th width="23%">Пользователь</th>
                                                            <th width="27%">Дата</th>
                                                            <th width="11%">Тип</th>
                                                            <th >Комментарий</th>
                                                            <th width="10%"></th>
                                                        </tr>
                                                        <tr>        
                                                            <td rowspan="2" style="vertical-align: middle">
                                                                <INPUT type="text" name="name" value="${name}" class="AllHeight">
                                                            </td>
                                                            <td width="27%">c :
                                                                <INPUT type="date" name="dateStart" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${dateStart}" />" style="width:85%">
                                                            </td>
                                                            <td  rowspan="2" style="vertical-align: middle">
                                                                <INPUT type="text" name="type" value="${type}" class="AllHeight">
                                                            </td>
                                                            <td  rowspan="2" style="vertical-align: middle">
                                                                <INPUT type="text" name="comment" value="${comment}" class="AllHeight">
                                                            </td>
                                                            <td  rowspan="2" style="vertical-align: middle">
                                                                <INPUT type="submit" name="submit" value="Искать!" class="AllHeight">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="27%">до:<INPUT type="date" name="dateEnd" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${dateEnd}" />" style="width:85%"></td>
                                                        </tr>
                                                    </table>     
                                                </form>
                                                <center>
                                                    <c:if test="${!logSearch.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <tr>
                                                                <th width="23%">Пользователь</th>
                                                                <th width="27%">Дата</th>
                                                                <th width="11%">Тип</th>
                                                                <th >Комментарий</th>

                                                            </tr>
                                                            <c:forEach var="log" items="${logSearch}">
                                                                <tr>
                                                                    <td>${log.user.name}</td>
                                                                    <td>
                                                                        <fmt:formatDate pattern="dd.MM.yyyy --- hh:mm" value="${log.date}"/>
                                                                    </td>
                                                                    <td>${log.type}</td>
                                                                    <td>${log.comment}</td>
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