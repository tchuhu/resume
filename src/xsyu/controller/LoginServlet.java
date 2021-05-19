package xsyu.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        String userId = req.getParameter("userId");
        String userPwd = req.getParameter("userPwd");
        System.out.println("userid:"+userId+",userPwd:"+userPwd);
        req.getRequestDispatcher("/page/home.jsp").forward(req,resp);
    }
}
