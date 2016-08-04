
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>留言板</title>
    </head>
    <body background="../img/t3.jpg">

        <table border="1" bordercolor="yellow">
            <tr   align="center">
                <td rowspan="2" width="7.5%">
                    <table border="5" bgcolor="pink" >
                        <tr>
                            <td>
                                <b>我的头像</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="image" src="..img/tx.gif">
                            </td>
                        </tr>
                    </table>
                </td>
                <td colspan="4" width="86%">
                    <div id="blink" align="center">
                        <font size="6"><b>我的空间我做主！</b></font>
                    </div>
                    <script language="javascript">
                        function changeColor(){
                            var color="yellow|green|blue|gray|pink";
                            color=color.split("|");
                            document.getElementById("blink").style.color=color[parseInt

                                (Math.random() * color.length)];
                        }
                        setInterval("changeColor()",200);
                    </script>
                </td>
                <td align="left"rowspan="2" bgcolor="pink" >
                    日常小事，了解一下
                </td>
            </tr>
            <tr>
                <td align="center">
                    <a href="zhuye.jsp"> <b>主页</b></a>
                </td>

                <td  align="center">
                    <a href="add.jsp"><b>留言板</b></a>
                </td>
                <td  align="center">
                    <a href="Photo_wall.jsp"> <b>相册</b></a>
                </td>
            </tr>
            <tr height="550">
                <td width="7.5%">
                    <div>
                        <font size="6" color="red">
                            <b>

                                欢<br>
                                迎<br>
                                给<br>
                                我<br>
                                留<br>
                                言<br>

                            </b>
                        </font>
                    </div>

                </td>
                <td colspan="4">
                    <form name="form1" method="post" action="Addliuyan">
                        <table width="450" border="1" align="center" >
                            <tr><th colspan="2"><h2>我要留言</h2></th>
                            </tr>
                            <tr>
                                <td>留言者：</td>
                                <td><input name="author" type="text"  size="20">*请不要超15个字符</td>
                            </tr>
                            <tr>
                                <td>留言标题:</td>
                                <td><input name="title" type="text" size=20></td>
                            </tr>
                            
                            <tr>
                                <td>Q Q:</td>
                                <td><input name="qq" type="text"  size="20"></td>
                            </tr>
                            <tr>
                                <td rowspan="2">留言内容：</td>
                                <td><textarea name="content" cols="30" rows="5">
                                    </textarea></td>
                            </tr>
                            <tr>
                            <td>*请不要超过300个字符</td>
                            </tr>
                            <tr>
                                <th colspan="2">
                                    <input type="submit" name="submit" value="提交">
                                    &nbsp;<input type="reset" name="reset" value="重置">  <br>
                                    <a href="show.jsp">查看留言</a>
                                </th>
                            </tr>
                        </table>
                    </form>
                </td>
                <td>
                    <div>
                        <font size="6" color="red">
                            <b>

                                有<br>
                                踩<br>
                                我<br>
                                必<br>
                                回<br>
                                哈<br>

                            </b>
                        </font>
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>
