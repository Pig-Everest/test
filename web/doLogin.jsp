<%--
  Created by IntelliJ IDEA.
  User: z6774
  Date: 2019/3/17
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>doLogin</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String loginId = request.getParameter("loginId");
        String loginPwd = request.getParameter("loginPwd");
        if (loginId.equals("233")&&loginPwd.equals("233")){
            session.setAttribute("Id",loginId);
            response.sendRedirect("success.jsp");
        }else if (loginId.equals("123")&&loginPwd.equals("123")){
            session.setAttribute("Id",loginId);
            response.sendRedirect("success.jsp");
        }else {
            request.setAttribute("errorInfo","用户名或密码错误，请检查后输入");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    %>
</body>
</html>
