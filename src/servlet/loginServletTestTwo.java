package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/loginServletTestTwo")
public class loginServletTestTwo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String loginId = request.getParameter("loginId");
        String loginPwd = request.getParameter("loginPwd");
        if (loginId.equals("233")&&loginPwd.equals("233")){
            request.getSession().setAttribute("Id",loginId);
            response.sendRedirect("success.jsp");
        }else if (loginId.equals("123")&&loginPwd.equals("123")){
            request.getSession().setAttribute("Id",loginId);
            response.sendRedirect("success.jsp");
        }else {
            request.setAttribute("errorInfo","用户名或密码错误，请检查后输入");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
