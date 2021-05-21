<%--
  Created by IntelliJ IDEA.
  User: tchuhu
  Date: 2021/5/19
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录</title>
  </head>
  <body>
    <div>
      <h1>欢迎登录</h1>
      <form action="<%= request.getContextPath()%>/LoginServlet" method="post">
        <p>账号：<input id="user" name="userId" type="text" required> </p>
        <p>密码：<input id="userPwd" name="userPwd" type="password" required></p>
        <P><input type="submit" value="登录"  ></P>
      </form>
    </div>
  </body>
</html>
