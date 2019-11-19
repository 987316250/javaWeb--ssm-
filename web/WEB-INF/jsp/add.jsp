<%--
  Created by IntelliJ IDEA.
  User: luckyfan
  Date: 2019/10/21
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加用户信息界面</title>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".b1").click(function () {
                var name=$("input[name='name']").val();
                var address=$("input[name='address']").val();
                var phone=$("input[name='phone']").val();
                var email=$("input[name='email']").val();
                $.ajax({
                    <!--每次加载页面都会重新从数据库拉取所有人的数据-->
                    url: "contact/add",
                    type: "post",
                    data:{name:name,address:address,phone:phone,email:email},
                    datatype: "json",
                    success:function (data) {
                        alert("成功");
                              window.location.href="main";
                    }

                })
            })

        })

    </script>
</head>
<style type="text/css">
    #d{
        margin-top: 300px;
        margin-left: 600px;
    }
    body
    {
        background-image: url("images/add.jpg");
        background-size: 100%;
    }
</style>
<body>
<div id="d">
    <table border="1" style="height: 500px" width="800px">
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name" value="" style="width: 80%" /></td>
            </tr>
            <tr>
                <td>住址</td>
                <td><input type="text" name="address" value="" style="width: 80%"/></td>
            </tr>
            <tr>
                <td>电话</td>
                <td><input type="text" name="phone" value="" style="width: 80%" /></td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td><input type="text" name="email" value=""  style="width: 80%"/></td>
            </tr>
            <tr>
                <td>操作:</td>
                <td><span style="margin-left: 50px;"><button class="b1">执行添加</button></span><span style="margin-left: 50px;"><button class="b2">重新填写</button></span>  </td>
            </tr>
    </table></div>

</body>
</html>
