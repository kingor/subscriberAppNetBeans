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
                                                    <h2>Параметры для абонента:</h2>
                                                    <table width="500">
                                                        <tr>
                                                            <td width="25%">ФИО абонента:</td> 
                                                            <td class="textBold">${subscriber.name}</td>
                                                        
                                                        </tr>
                                                        <tr><td>Адрес абонента:</td> 
                                                            <td class="textBold">${subscriber.address}</td></tr>
                                                    </table>
                                                    <h2>Параметры:</h2>
                                                    <form name="form5" method="post" action="createPhone">
                                                        <input type="hidden" name="id" value="${subscriber.id}">
                                                    <table width="500" >
                                                        <tr>
                                                            <td width="25%">Номер телефона:</th>
                                                            <td ><INPUT type="text" name="number" style="width:100%"></td>
                                                        </tr>
                                                        <tr>
                                                            <td >Гром полоса:</th>
                                                            <td ><INPUT type="text" name="band" style="width:100%"></td>
                                                        </tr>
                                                        <tr>
                                                            <td >Защитная полоса:</th>
                                                            <td ><INPUT type="text" name="security" style="width:100%"></td>
                                                        </tr>
                                                        <tr>
                                                            <td >ADSL:</th>
                                                            <td ><INPUT type="text" name="adsl" style="width:100%"></td>
                                                        </tr>
                                                        <tr>
                                                            <th colspan="2" width="5%">
                                                                <br>
                                                                <INPUT type="submit" name="submit" value="Сохранить" style="width:20%">
                                                            </th>
                                                            
                                                        </tr>
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