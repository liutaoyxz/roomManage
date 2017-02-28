<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/hotel.css">

    <script src="/static/jquery/jquery-3.1.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/js/index.js"></script>
    <title>酒店管理主页</title>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <button class="ht_btn colo1" type="submit" onclick="window.location='/toHotelPage'">我是客人</button>
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
                <div class="modal-content" style="height: 700px;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            ×
                        </button>
                        <h1 class="modal-title" id="myModalLabel" style="font-size: 70px">
                            登录
                        </h1>
                    </div>
                    <div class="modal-body">
                        <div class="input-group">
                            <label style="font-size: 60px">账号:&nbsp;&nbsp;&nbsp;</label>
                            <input class="inp" type="text" id="name"  />
                            <div class="clean"></div>
                            <label style="font-size: 60px">密码:&nbsp;&nbsp;&nbsp;</label>
                            <input class="inp" type="password" id="password" />
                        </div>
                    </div>
                    <div class="modal-footer ">
                        <button type="button" id="login" class="btn btn-primary mbtn" style="float: left">
                            登录
                        </button>
                        <button type="button" class="btn btn-default mbtn" id="close" data-dismiss="modal" style="float: left">关闭
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
    $('#ddz').on('click',function () {
        $('#name').focus();
    });

//    $('#close').on('click',function () {
//        window.location.reload();
//    });

    $('#login').on('click',function () {
        var name = $('#name').val();
        var password = $('#password').val();
        if (name == 'zhangyue' && password == '0309'){
            alert('登录成功');
        }else {
            alert('账号或密码错误!');
        }

    });
</script>
</body>
</html>
