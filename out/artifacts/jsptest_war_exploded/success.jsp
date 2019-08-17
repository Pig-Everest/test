<%--
  Created by IntelliJ IDEA.
  User: z6774
  Date: 2019/3/17
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List,java.util.ArrayList" %>
<html>
<head>
    <title>success</title>
</head>
<body>
<%
    List<String> list = new ArrayList();
    String loginId = (String)session.getAttribute("Id");
    list.add(loginId);
%>
    <p >
        <%= list.get(0)%>登陆成功!!
    </p>
</body>
</html>
