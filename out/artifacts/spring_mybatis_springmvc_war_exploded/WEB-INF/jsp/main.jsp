<%--
  Created by IntelliJ IDEA.
  User: luckyfan
  Date: 2019/10/21
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="h">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript">
      //为所有p元素绑定click事件处理程序(注意：这里省略了selector参数)
      //n2、n3、n5均可触发该事件
      $(document).on('click','.up',function () {
          <!--将当前行的参数传递过去-->
          var id=$(this).parent().parent().find("td").eq(0).text();
          var name=$(this).parent().parent().find("td").eq(1).text();
          var address=$(this).parent().parent().find("td").eq(2).text();
          var phone=$(this).parent().parent().find("td").eq(3).text();
          var email=$(this).parent().parent().find("td").eq(4).text();
              $.ajax({
                  url:"update",
                  type:"post",
                  data:{id:id,name:name,address:address,phone:phone,email:email},
                  datatype:"json",
                  success:function (data) {
                         window.location.href="modify";
                  }
              })
      })
      $(document).on("click",'.de',function () {
          var id=$(this).parent().parent().find('td').eq(0).text();
          $.ajax({
              url:"contact/delete",
              type:"post",
              data:{id:id},
              datatype: "json",
          })
          $(this).parent().parent().remove();
      });
      $(document).ready(

          function () {

          $.ajax({
              <!--每次加载页面都会重新从数据库拉取所有人的数据-->
              url: "contact/refresh",
              type: "post",
              data:{},
              datatype: "json",
              catche: "false",
              success:function (data) {
                  for (var i = 0; i < data.length; ++i) {
                      console.log(data[i]);
                      <!--{ address: "1", email: "111", id: 1, name: "范帆", phone: "1" } -->
                      var tr = $("<tr></tr>");
                      var t1 = $("<td>" + data[i].id + "</td>");
                      var t2 = $("<td>" + data[i].name + "</td>");
                      var t3 = $("<td>" + data[i].address + "</td>");
                      var t4 = $("<td>" + data[i].phone + "</td>");
                      var t5 = $("<td>" + data[i].email + "</td>");
                      var t6 = $("<td><button class='up' type='button' >修改</button></td>");
                      var t7 = $("<td><button class='de' type='button'>删除</button></td>");
                      tr.append(t1).append(t2).append(t3).append(t4).append(t5).append(t6).append(t7);
                      $("#tb").append(tr);
                  }
              }}
          )
              $(".b1").click(function () {window.location.href="add";});

          })

  </script>
</head>
<style type="text/css">
    body{
        background-image: url("images/main.jpg");
        background-size: auto;


    }
    p{
        font-size: 50px;
        text-align: center;
        text-shadow: 0.1em 0.1em chartreuse;

    }
    .d1{
        margin-left: auto;
        margin-right:auto;
        height: 50px;
    }
    .d2{

        width:800px;
        height: 400px;
        margin-left: auto;
        margin-right: auto;
        margin-top: 100px;

    }
    .d3{
        text-align: center;
    }
</style>
<body>

<div class="d1">
    <p >联系人管理系统</p>
</div>

<div class="d2">

    <table border="1" width="800px">
        <caption style="font-size:30px">联系人信息</caption>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>地址</th>
            <th>电话</th>
            <th>邮箱</th>
            <th>修改</th>
            <th>删除</th>
        </tr>
        <tbody id="tb">

        </tbody>
    </table>
</div>
<div class="d3">
        <button style="height: 50px;width: 100px" class="b1">添加联系人</button>
</div>
</body>
</html>