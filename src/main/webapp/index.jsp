<%-- 
    Document   : Login
    Created on : 14.03.2015, 13:24:46
    Author     : Family_P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <%@include file="Header.jspf" %>

            <table width=860 cellspacing=0 cellpadding=0 border=0>
                <tr>
                    <%@include file="menu_user.jspf" %>
                    
                    <td width=7 bgcolor="#e4e8ea"></td>
                    <td width=643  align="center">
                        <table width=643 cellspacing=0 cellpadding=1 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=643 cellspacing=0 cellpadding=20 border=0>
                                        <tr>
                                            <td class="content">
                                                <center><img src="style/telecom1.jpg" height=320></center>
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