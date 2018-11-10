<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/2
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        function update() {
            var button=$("#update").val();
            if(button=="编辑"){
                $("#userName").attr("disabled",false);
                $("#age").attr("disabled",false);
                $("#userId").attr("disabled",false);
                $("#userSex").attr("disabled",false);
                $("#update").val("保存");
            }else if(button=="保存"){
                $("#userName").attr("disabled",true);
                $("#age").attr("disabled",true);
                $("#userId").attr("disabled",true);
                $("#userSex").attr("disabled",true);
                $("#update").val("编辑");

            }

        }
    </script>
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
    <div align="center">
        用户名:<input type="text" id="userName" value="${userManagement.user_name}" disabled="disabled">
        年龄:<input type="text" id="age" value="${userManagement.user_age}" disabled="disabled">
        用户id:<input type="text" id="userId" value="${userManagement.user_id}" disabled="disabled">
        用户性别:<input type="text" id="userSex" value="${userManagement.user_sex}" disabled="disabled">
    </div>
</body>
</html>

