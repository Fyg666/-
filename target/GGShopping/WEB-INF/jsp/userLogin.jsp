<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/2
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<html>
<head>
    <!-- 新Bootstrap核心css文件 -->
    <link rel="stylesheet" type="text/css" href="${path}/bootstrap/css/bootstrap.min.css">

    <!--jsquery文件。务必在bootstrap.min.js之前引入  -->
    <script src="${path}/bootstrap/js/jquery-1.4.2.min.js" type="text/javascript"></script>

    <!-- 最新的Bootstrap核心JavaScript文件 -->
    <script src="${path}/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <title>登录</title>
</head>
<body>
    <a href="/user/index">首页</a>
    <form action="<%=basePath%>user/userLogin" name="userForm" method="post">
        账号：<input type="text" name="userName" align="center">
        密码：<input type="password" name="password" align="center">
        <input type="submit" name="loginButton" value="登录">
    </form>
</body>
</html>
