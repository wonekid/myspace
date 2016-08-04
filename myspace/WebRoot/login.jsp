
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>欢迎进入由我主宰的登陆界面</title>
    <script charset="utf-8">
        function check()
        {
            if(document.getElementById("username").value.length==0)
            {
                alert("账号不为空！");
                return false;
            }
            if(document.getElementById("password").value.length==0)
            {
                alert("密码不为空！");
                return false;
            }
            return true;
          
        }
    </script>
</head>

<body background="img/t1.gif">

        <h6 align="center"><font color="#0000ff" face="迷你简超粗圆" style="background-color: rgb(255, 128, 255);"><font size="5">个人空间管理系统</font></font><br></h6><p align="center"><br></p><p align="center"></p>
        <form action="LoginServlet" method="post" onsubmit="return check();">
            <table align="center" border="0">
                <tr>
                    <td align="center">账号:<input type="text" name="username" id="username" ><br></td><td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td>

                </tr>
                <tr>
                    <td align="center">密码:<input type="password" name="password" id="password"><br></td><td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td>
                </tr>

            </table>

            <p align="center">
                <input  type="submit" name="login" value="登陆" >
                <input  type="reset" name="reset" value="重置">
            </p>
            <hr>
            <p align="center">如果您还没有账号，请先<a href="register.jsp"><font color="#FF0000">注册</font></a>再登录</p>


        </form>
</body>
</html>
