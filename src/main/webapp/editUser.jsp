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
                                                    <h2>Редактор пользователей:</h2>
                                                    <INPUT type="hidden" name="id" value="${userEdit.id}">
                                                    <table class=AllWidth>
                                                        <form name="form5" method="post" action="editUser">
                                                            <tr>
                                                                <td width="25%">Login:</th>
                                                                <td width="75%" class="textBold"><INPUT type="text" name="login" value="${userEdit.login}" style="width:100%" ></td>
                                                            </tr>
                                                            <tr>
                                                                <td >Пароль:</th>
                                                                <td class="textBold"><INPUT type="text" name="password" value="${userEdit.password}" style="width:100%" ></td>
                                                            </tr>
                                                            <tr>
                                                                <td >Имя:</th>
                                                                <td class="textBold"><INPUT type="text" name="name" value="${userEdit.name}" style="width:100%" ></td>
                                                            </tr>
                                                            <tr>
                                                                <td >Категория:</th>
                                                                <td>
                                                                    <select name="category" style="width:100%" >                 
                                                                        <option value="2">Пользователь</option>
                                                                        <option value="1">Оператор</option>
                                                                        <option value="0">Администратор</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                    </table>
                                                            <br>
                                                            <table>
                                                                <tr>
                                                                    <td width="50%">
                                                                        <INPUT type="submit" name="submit" value="Сохранить" class="AllWidth">
                                                                    </td>
                                                                    </form>

                                                                <form name="form5" method="post" action="userSearchEdit">
                                                                    <td width="50%">                                                                      
                                                                        <INPUT type="submit" name="submit" value="Отмена" class="AllWidth">                                                                               
                                                                    </td>
                                                                </form>
                                                                </tr>
                                                            </table>
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