<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
            String path = request.getContextPath();
            String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>注册</title>

    </head>
    <br><br><br><br><br>

    <body background="img/t1.gif">

        <p align="center"><font color="#0000ff" size="18">欢迎注册</font></p>


        <form action="RegisterServlet" method="post" onsubmit="return check();">

            <table align="center">

                <tr>
                    <td align="center">账号:<input type="text" name="username1" ></td>
                </tr>

            </table>

            <p align="center"><font size="1">只能是字母与数字的组合</font></p>

            <table align="center">
                <tr>
                    <td align="center">密码:<input type="password" name="password1" ></td>
                </tr>
            </table>

            <p align="center">

                <input type="submit" name="submit" value="注册">
                <input type="reset"  name="cancel" value="重置">
            </p>

            <p align="center">如果已经注册了<a href="login.jsp" >返回登陆界面</a></p>
        </form>
    </body>
</html>
