<%--
  Created by IntelliJ IDEA.
  User: luckyfan
  Date: 2019/10/24
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
                           <!--登录界面-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".b2").click(function () {
                $("input").val("请输入");
            })
            $(".b1").click(function () {
                var username=$("input[name='username']").val();
                var  password=$("input[name='password']").val();
                $.ajax({
                    url:"validation/verify",
                    type:"post",
                    data:{
                        username: username,
                        password: password
                    },
                    datatype:"json",
                    success: function (data) {
                        <!--将后端返回过来的json字符串转化成javascript对象 -->
                        alert(data);
                        var js=JSON.parse(data)
                            if(js["result"]=="true")
                            {
                                   window.location.href="main";
                            }
                            else
                            {
                                alert("账户名密码输入错误");
                            }
                    },
                    error:function (err) {
                        alert("登录失败")
                    }
                })
            })
        })

    </script>
</head>
<style type="text/css">
    body{
        background-image: url("images/login.jpg");
        background-size:100%;
        background-repeat: no-repeat;
    }
    p{
        text-align: center;
    }
    .d{
        margin-top: 300px;
    }
    input {
        width: 300px;
    }
</style>
<body>
<div class="d">
    <p style="font-size: 50px">Welcome to our system</p>
        <p>用户名:&nbsp<input type="text" name="username" value="" /></p>
        <p>密码:&nbsp&nbsp&nbsp&nbsp<input type="text" name="password" value=""></p>
       <p> <button class="b1">提交</button><button class="b2">重置</button></p>


</div>
</body>
</html>
