<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/2
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>个人中心</title>
    <!-- 新Bootstrap核心css文件 -->
    <link rel="stylesheet" type="text/css" href="${path}/bootstrap/css/bootstrap.min.css">

    <%--新版--%>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <!-- 最新的Bootstrap核心JavaScript文件 -->
    <script src="${path}/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <div align="right">
        <input type="button" value="编辑" id="update" onclick="update()">
    </div>
    <div align="center" id="myDiv" >
        用户名:<input type="text" id="userName" name="userName" value="${userManagement.user_name}" disabled="disabled"><br>
        年龄:<input type="text" id="age" name="userAge" value="${userManagement.user_age}" disabled="disabled" onchange="ageChange()"><br>
        用户id:<input type="text" id="userId" name="userId" value="${userManagement.user_id}" disabled="disabled"><br>
        用户性别:<input type="text" id="userSex" name="userSex" value="${userManagement.user_sex}" disabled="disabled" onchange="sexChange()"><br>
        <input type="button" value="返回" id="return" onclick="location.href=('/user/index')">
        <c:set var="SOrL" scope="session" value="${msg}"></c:set>
        <c:if test="${SOrL>0}">
            <script>
                alert("修改成功！")
            </script>
        </c:if>
        <c:if test="${SOrL<0}">
        <script>
            alert("修改失败！")
        </script>
        </c:if>
    </div>
</body>
</html>
<script>


    var userName =$("#userName").val();
    function ageChange(){
        var age =$("#age").val();
        return age;
    }
    function sexChange(){
        var sex =$("#userSex").val()
        return sex;
    }
    function update() {
        var button=$("#update").val();
        if(button=="编辑"){
            $("#age").removeAttr("disabled");
            $("#userSex").removeAttr("disabled");
            $("#update").val("保存");
        }else if(button=="保存"){
            var age=ageChange();
            var sex=sexChange();
           /* var age=$("#age").val();
            var sex=$("#userSex").val();
            var userName=$("#userName").val();*/
            /*window.location.href="{path }/user/updateUserManagement?age="+age+"sex="+sex+"userName="+userName;*/
            window.location.href="${path }/user/updateUserManagement?age="+age+"&sex="+sex+"&userName="+userName;
           /* var i = {msg};
            if(i>0){
                alert("修改成功");
            }
            if(i<1){
                alert("修改失败");
            }*/

            /*$("#age").attr("readonly",true);
            $("#userSex").attr("readonly",true);
            $("#update").val("编辑");*/
           /* window.location.reload();*/
            /*$("#age").val("{userManagement.user_age}");
            $("#userSex").val("{userManagement.user_sex}");*/
        }
    }
</script>

