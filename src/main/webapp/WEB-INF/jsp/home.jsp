<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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

    <!--jsquery文件。务必在bootstrap.min.js之前引入  -->
    <script src="${path}/bootstrap/js/jquery-1.4.2.min.js" type="text/javascript"></script>

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
    <input type="hidden" value=${userName} id="userName">
    <a href="/user/login" id="login">登录</a>
    <a href="${path }/paper/allPaper" id="add">注册</a>
    <a href="${path }/paper/allPaper" id="logout" hidden>注销</a>
    <a href="${path }/paper/allPaper">我的订单</a>
    <a href="${path }/paper/allPaper">商品分类</a>
    <a href="${path }/paper/allPaper">热门商品</a>
    <a href="${path }/paper/allPaper">我的购物车</a>
    <a href="${path }/paper/allPaper">个人中心</a>
</h3>
</body>
</html>
<script>
    var userName=document.getElementById("userName").value;
    if(userName!=null||userName!=""){
        $("#login").html(userName+"欢迎登录");
        $("#add").hide();
        $("#logout").show();
    }
</script>
