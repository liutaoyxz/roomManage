<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/index.css">

    <script src="/static/jquery/jquery-3.1.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/js/index.js"></script>
    <title>欢迎!!!</title>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">

        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <div class="alert alert-success" role="alert">您可以提前在这里<font color="red">告诉</font>主办方您的留宿信息,方便主办方提前为您预定房间</div>
            <button class="ht_btn colo1" type="submit" onclick="window.location='/toHotelPage'">告诉他</button>
            <button id="ddz" class="ht_btn colo2" type="submit" data-toggle="modal" data-target="#myModal">我是东道主
            </button>
        </div>
        <%--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">--%>
        <%--打开遮罩层--%>
        <%--</button>--%>

        <!-- 模态框（Modal） -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true" >
            <div class="modal-dialog">
                <div class="modal-content" >
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            ×
                        </button>
                        <h1 class="modal-title" id="myModalLabel" >
                            登录
                        </h1>
                    </div>
                    <div class="modal-body">
                        <div class="input-group">
                            <label class="modal-lable">账号:&nbsp;&nbsp;&nbsp;</label>
                            <input class="inp" type="text" id="name"  />
                            <div class="clean"></div>
                            <label class="modal-lable">密码:&nbsp;&nbsp;&nbsp;</label>
                            <input class="inp" type="password" id="password" />
                        </div>
                    </div>
                    <div class="modal-footer ">
                        <button type="button" id="login" class="btn btn-primary mbtn" >
                            登录
                        </button>
                        <button type="button" class="btn btn-default mbtn" id="close" data-dismiss="modal" >关闭
                        </button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>
    </div>
</div>
<script>
    $('#login').on('click',function () {
        var name = $('#name').val();
        var password = $('#password').val();
        if (name == 'zhangyue' && password == '0309'){
            alert('登录成功');
            window.location.href="/toManagePage";
        }else {
            alert('账号或密码错误!');
        }

    });

</script>
</body>
</html>
