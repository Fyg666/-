<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <%--<style type="text/css">
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }

        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>--%>
    <!-- 新Bootstrap核心css文件 -->
<%--    <link rel="stylesheet" href="WEB-INF/bootstrap/css/bootstrap.min.css">--%>

   <%-- <!--jsquery文件。务必在bootstrap.min.js之前引入  版本过旧  -->
    <script src="${path}/bootstrap/js/jquery-1.4.2.min.js" type="text/javascript"></script>--%>
    <%--新版--%>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <!-- 最新的Bootstrap核心JavaScript文件 -->
   <%-- <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统：简单实现增、删、改、查。
                </h1>
            </div>
        </div>
    </div>
</div>
<br><br>
<h3>
    <%--隐藏传值--%>
    <%--<input type="hidden" value=${userName} id="userName" name="userName">--%>
        <%--<input type="text" value="${userName}" name="userName" style="display:none;">--%>
        <%--c标签登录名显示--%>
        <c:set var="userName" scope="session" value="${userName}"></c:set>
        <%--第一种方式--%>
       <c:choose>
            <c:when test="${userName!=null}">
                <a href="javascript:void(0);" onclick="userManagement()" id="userName"><c:out value="${userName}"/></a>
                 <a href="${path }/user/outLogin" id="logout">注销</a>
            </c:when>
            <c:otherwise>
                <a href="/user/login" id="login">登录</a>
                <a href="${path }/user/registered" id="add">注册</a>
            </c:otherwise>
        </c:choose>
        <%--第二种方式--%>
       <%-- <c:if test="${userName!=null}">
            <a href="/user/login" id="login"><c:out value="${userName}"/></a>
            <a href="${path }/paper/allPaper" id="logout">注销</a>
        </c:if>
        <c:if test="${userName==null}">
            <a href="/user/login" id="login">登录</a>
            <a href="${path }/paper/allPaper" id="add">注册</a>
        </c:if>--%>

    <a href="${path }/paper/allPaper">我的订单</a>
    <a href="${path }/paper/allPaper">商品分类</a>
    <a href="${path }/paper/allPaper">热门商品</a>
    <a href="${path }/paper/allPaper">我的购物车</a>
    <a href="${path }/paper/allPaper">个人中心</a>
</h3>
</body>
</html>
<%--第三种方式--%>
<%--js登录名显示--%>

<script>
    <%--
    var userName=document.getElementById("userName").value;
    if(userName!=null||userName!=""){
        $("#login").html(userName+"欢迎登录");
        $("#add").hide();
        $("#logout").show();
    }--%>
    <%--向前台传a标签的值--%>
    function userManagement() {
        var userName = $("#userName").html();
        window.location.href="${path }/user/userManagement?userName="+userName;
    }
</script>

