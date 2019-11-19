<%--
  Created by IntelliJ IDEA.
  User: luckyfan
  Date: 2019/10/25
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(document).on('click',".b1",function () {
            var id=$("input[name='id']").val();
            var name=$("input[name='name']").val();
            var address=$("input[name='address']").val();
            var phone=$("input[name='phone']").val();
            var email=$("input[name='email']").val();
                $.ajax({
                    url:"contact/update",
                    type:"post",
                    data:{id:id,name:name,address:address,phone:phone,email:email},
                    datatype:"json",
                    success:function () {

                        window.location.href="main";
                    }
            })
        })
        $(document).ready(function () {
            <!--一键清空所有输入框-->
            $(".b2").click(function () {
                $("input").val("");
            })

        })

    </script>
</head>

<style>
    body{
        background-size: 100%;
        background-image: url("images/update.jpg");
        background-repeat: no-repeat;
    }
    #d{
        margin-top: 200px;
        margin-left: 550px;
    }
</style>
<body>

<div id="d">
    <table border="0" style="height: 500px" width="800px">
        <tr>
            <td>编号</td>
            <td><input type="text" name="id" value="${c.id}" style="width: 80%" /></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="name" value="${c.name}" style="width: 80%" /></td>
        </tr>
        <tr>
            <td>住址</td>
            <td><input type="text" name="address" value="${c.address}" style="width: 80%"/></td>
        </tr>
        <tr>
            <td>电话</td>
            <td><input type="text" name="phone" value="${c.phone}" style="width: 80%" /></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="text" name="email" value="${c.email}"  style="width: 80%"/></td>
        </tr>
        <tr>
            <td>操作:</td>
            <td><span style="margin-left: 50px;"><button class="b1" >确认修改</button></span><span style="margin-left: 50px;"> <button class="b2">重新填写</button></span></td>

        </tr>
    </table>
</div>
</body>
</html>