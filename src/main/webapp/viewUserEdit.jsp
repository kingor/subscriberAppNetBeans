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
                                                <form name="form5" method="post" action="userSearchEdit">
                                                    <center>
                                                        <h2>Редактор пользователей:</h2>
                                                    </center>
                                                    <table class="AllWidth">
                                                        <tr>
                                                            <th width="17%">Логин</th>
                                                            
                                                            <th width="20%">Имя</th>
                                                            <th width="20%">Категория</th>
                                                            <th width="23%"></th>
                                                        </tr>
                                                        <tr>        
                                                            <td><INPUT type="text" name="login" style="width:100%"></td>
                                                            <td><INPUT type="text" name="name" style="width:100%"></td>
                                                            <td><INPUT type="text" name="category" style="width:100%"></td>
                                                            <td><INPUT type="submit" name="submit" value="Искать!" style="width:100%"></td>
                                                        </tr>
                                                    </table>     
                                                </form>
                                                <center>
                                                    <c:if test="${!userSearchEdit.isEmpty()}">
                                                        <table class="AllWidth" border="1">
                                                            <tr>
                                                                <th width="17%">Логин</th>
                                                                <th width="20%">Пароль</th>
                                                                <th width="20%">Имя</th>
                                                                <th width="20%">Категория</th>
                                                                <th colspan="2" width="23%">Редактор</th>
                                                                
                                                            </tr>
                                                            <c:forEach var="userEdit" items="${userSearchEdit}">
                                                                <tr>
                                                                    <td>${userEdit.login}</td>
                                                                    <td>${userEdit.password}</td>
                                                                    <td>${userEdit.name}</td>
                                                                    <td>${userEdit.category}</td>
                                                                    <td>
                                                                        <form name="form5" method="post" action="editUserView">
                                                                            <input type="hidden" name="userSelect" value=${userEdit.id}>
                                                                            <INPUT type="submit" name="submit" value="Редактор" style="width:100%">
                                                                        </form>
                                                                    </td>
                                                                    <td>
                                                                        <form name="form7" method="post" action="deleteUser">
                                                                            <input type="hidden" name="userSelect" value=${userEdit.id}>
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