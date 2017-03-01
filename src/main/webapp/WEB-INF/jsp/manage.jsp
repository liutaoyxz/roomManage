<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>入驻管理</title>

    <!-- 固定头部 -->
    <meta charset="utf-8"/>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" >--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <script src="/static/jquery/jquery-3.1.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <!-- 固定头部 -->


</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="tabbable" id="tabs-586522">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-595600" data-toggle="tab">客人</a>
                    </li>
                    <li>
                        <a href="#panel-145670" data-toggle="tab">房间</a>
                    </li>
                    <li>
                        <a href="#panel-145671" data-toggle="tab">预约</a>
                    </li>
                    <li>
                        <a href="#panel-145672" data-toggle="tab">酒店管理</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-595600">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>客人</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="in-guest-body">

                            </tbody>
                        </table>
                    </div>

                    <!-- 房间 -->
                    <div class="tab-pane" id="panel-145670">

                    </div>
                    <!-- 预约 -->
                    <div class="tab-pane" id="panel-145671">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>客人</th>
                                <th>性别</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="reserve-table-body">
                            </tbody>
                        </table>
                    </div>

                    <div class="tab-pane" id="panel-145672">
                        <button class="btn btn-success"  data-toggle="modal" data-target="#addHotel">添加酒店</button>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>名称</th>
                                <th>地址</th>
                                <th>电话</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="table-body-hotel">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 添加酒店弹窗 -->
    <div class="modal fade" id="addHotel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true" >
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×
                    </button>
                    <h1 class="modal-title" id="myModalLabel" >
                        添加酒店
                    </h1>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <label class="modal-lable">名称:&nbsp;&nbsp;&nbsp;</label>
                        <input class="inp" type="text" id="hotelName"  />
                        <div class="clean"></div>
                        <label class="modal-lable">电话:&nbsp;&nbsp;&nbsp;</label>
                        <input class="inp" type="text" id="phone" />
                        <div class="clean"></div>
                        <label class="modal-lable">地址:&nbsp;&nbsp;&nbsp;</label>
                        <input class="inp" type="text" id="address" />
                    </div>
                </div>
                <div class="modal-footer ">
                    <button type="button" id="addHotelAction" class="btn btn-primary " >
                        添加
                    </button>
                    <button type="button" class="btn btn-default mbtn" id="close" data-dismiss="modal" >关闭
                    </button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>
    <!-- /.modal -->

    <!-- 客人详情弹窗 -->
    <div class="modal fade" id="guest-info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true" >
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×
                    </button>
                    <h1 class="modal-title" id="guest-title" >
                        客人详情
                    </h1>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <label class="modal-lable">客人:&nbsp;&nbsp;&nbsp;</label>
                        <span id="guest-info-name"></span>
                        <div class="clean"></div>
                        <label class="modal-lable">房号:&nbsp;&nbsp;&nbsp;</label>
                        <span id="guest-info-room-number"></span>
                        <div class="clean"></div>
                        <label class="modal-lable">持卡:&nbsp;&nbsp;&nbsp;</label>
                        <span id="guest-info-have-card"></span>
                        <div class="clean"></div>
                        <label class="modal-lable">电话:&nbsp;&nbsp;&nbsp;</label>
                        <span id="guest-info-phone"></span>
                        <div class="clean"></div>
                        <label class="modal-lable">酒店:&nbsp;&nbsp;&nbsp;</label>
                        <span id="guest-info-hotel-name"></span>
                    </div>
                </div>
                <div class="modal-footer ">

                    <button type="button" class="btn btn-default mbtn" data-dismiss="modal" >确定
                    </button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>
    <!-- /.modal -->

    <!-- 分配住房弹窗 -->
    <div class="modal fade" id="reserve-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true" >
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×
                    </button>
                    <h1 class="modal-title"  >
                        分配房间
                    </h1>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <label class="modal-lable">客人:&nbsp;&nbsp;&nbsp;</label>
                        <input type="hidden" id="reserve-guest-roomId"/>
                        <span id="reserve-guest-name"></span>
                        <div class="clean"></div>
                        <label class="modal-lable">房号:&nbsp;&nbsp;&nbsp;</label>
                        <input  type="text" id="roomNumber" />
                        <div class="clean"></div>
                        <label class="modal-lable">酒店:&nbsp;&nbsp;&nbsp;</label>
                        <select  id="hotel-sel">

                        </select>
                        <label class="modal-lable">持卡:&nbsp;&nbsp;&nbsp;</label>
                        <select id="have-card">
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer ">
                    <button type="button" id="ensureReserve" class="btn btn-primary " onclick="ensertReserve()" >
                        确定
                    </button>
                    <button type="button" class="btn btn-default " id="close-reserve" data-dismiss="modal" >关闭
                    </button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>


</div>
<script src="/static/js/manage.js"></script>
<script>


</script>
</body>
</html>
