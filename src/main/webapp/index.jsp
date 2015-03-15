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
        <LINK href="main3.css" type=text/css 
              rel=stylesheet>
    </head>
    <body bgcolor="#e4e8ea">
        <div align="center">
            <%@include file="Header.jspf" %>

            <table width=760 cellspacing=0 cellpadding=0 border=0>
                <tr>
                    <td width=210>
                        <table width=210 cellspacing=1 cellpadding=0 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=210 border=0 cellpadding=0>
                                        <TR>
                                            <TD class=nav >&nbsp;
                                                <SPAN class=BigPrint >
                                                    <b>Меню пользователя:</b>
                                                </SPAN>
                                            </TD>
                                        </TR>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table width=210 border=0 cellpadding=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=210 border=0 cellpadding=5>
                                        <tr>
                                            <td class="login">
                                                <table>
                                                    <tr>
                                                        <td width="56">
							<form name="form5" method="post" action="subscribers">
                                                            <INPUT type="submit" name="submit" value="Просмотр всех абонентов">
							</form>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="56">
                                                            <INPUT type="submit" name="submit" value="    Поиск абонентов    " size="30">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td width=7 bgcolor="#e4e8ea"></td>
                    <td width=543  align="center">
                        <table width=543 cellspacing=0 cellpadding=1 border=0>
                            <tr>
                                <td bgcolor="#aaaaaa">
                                    <table width=543 cellspacing=0 cellpadding=20 border=0>
                                        <tr>
                                            <td class="content">
                                                <center><img src="telecom1.jpg" height=320></center>
                                            </td>
                                        </tr>

                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>
            <%@include file="Footer.jspf" %>
        </div>
        <br> 
    </body>
</html>