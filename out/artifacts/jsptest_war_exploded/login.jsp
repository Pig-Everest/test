<%--
  Created by IntelliJ IDEA.
  User: z6774
  Date: 2019/3/17
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form action="loginServletTestTwo" method="post" name="form1" id="form1">
    用户名：<input type="text" name="loginId" id="loginId"/>
    密&nbsp码：<input type="password" name="loginPwd" id="loginPwd"/>
    <input type="submit" value="登录"/>
    <%
        String errorInfo = (String)request.getAttribute("errorInfo");
        if (errorInfo!=null){
    %>
        <div style="color:red;font-size: 18px"><%=errorInfo %>></div>
    <%
        }
    %>
    </form>
</body>
</html>
