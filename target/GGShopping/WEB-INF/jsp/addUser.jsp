<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/2
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        <!--验证用户名-->
        $(document).ready(function(){
            $("#userName").blur(function(){
                var userName=$("#userName").val();
                $.ajax({
                    async:true,
                    cache:true,
                    data:"name="+userName,
                    dataType:"json",
                    type:"POST",
                    url:"${path }/user/vUserName",
                    success:function (data) {
                        if(data!=null){
                            $("#nameDiv1").html("用户名已被注册")
                            $("#userName").click(function () {
                                $("#nameDiv1").html("")
                            })
                        }
                    }
                });
                if(userName==null||userName==""){
                    $("#nameDiv1").html("登录名不能为空")
                    $("#userName").click(function () {
                        $("#nameDiv1").html("")
                    })
                }else if(userName.length<3||userName.length>15){
                    $("#nameDiv1").html("登录只能在3~~15位之间")
                    $("#userName").click(function () {
                        $("#nameDiv1").html("")
                    })
                }
            });
        });
    </script>

    <title>注册</title>
</head>
<body>
        <form action="${path }/user/toRegistered" method="post" align="center">
            登录名:<input type="text" name="userName" id="userName" style="width: 200px;"/>
            &nbsp;
            &nbsp;
            <span id="nameDiv1" style="color: red; font-size: 15px;"  ></span><br>
            <br>
            性别:<input type="text" id="sex" name="sex" style="width: 200px;">
            &nbsp;
            &nbsp;
            <span id="nameDiv2" style="color: red; font-size: 15px;"></span><br>
            <br>
            年龄:<input type="text" id="age" name="age" style="width: 200px;">
            &nbsp;
            &nbsp;
            <span id="nameDiv3" style="color: red; font-size: 15px;"></span><br>
            <br>
            密码:<input type="password" id="password" name="password" style="width: 200px;">
            &nbsp;
            &nbsp;
            <span id="nameDiv4" style="color: red; font-size: 15px;"></span><br>
            <br>
            <input type="submit" value="注册" >
            <c:set var="SOrL" scope="session" value="${SOrL}"></c:set>
            <c:if test="${SOrL==1}">
                注册成功！！！<span id="spanId"></span>秒后返回<a href="${path }/user/login">登录</a>页面！
                <script>
                    window.onload=function ()
                    {
                        var spanId=document.getElementById('spanId');
                        var value=5;
                        setInterval(function(){
                            spanId.innerHTML=value;
                            value--;
                        },1000);
                    };
                    setTimeout("window.location.href='${path }/user/login'",5000);
                </script>
            </c:if>
            <c:if test="${SOrL>1}">
                注册失败！！！
            </c:if>
        </form>
</body>