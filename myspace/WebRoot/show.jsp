
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList,JavaBean.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>留言板的显示</title>
    </head>
    <body>
        <%
            ArrayList wordlist = (ArrayList) application.getAttribute("wordlist");
            if (wordlist == null || wordlist.size() == 0)
                out.print("没有留言");
            else {
                for (int i = wordlist.size() - 1; i >= 0; i--) {
                    LiuyanbanBean mm = (LiuyanbanBean) wordlist.get(i);
        %>
        留言者：<%=mm.getAuthor()%>
        <p>
            留言时间：<%=mm.getTime()%>
        <p>
            留言标题：<%=mm.getTitle()%>
        <p>
            留言内容：
            <textarea rows="8" cols="30" readonly>  <%=mm.getContent()%></textarea>
            <a href="add.jsp">我要留言</a>
        <hr width="90%">
        <%

                }
            }
        %>
    </body>

</html>
