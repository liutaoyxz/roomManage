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
                                <th>编号</th>
                                <th>产品</th>
                                <th>交付时间</th>
                                <th>状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>TB - Monthly</td>
                                <td>
                                    01/04/2012
                                </td>
                                <td>
                                    Default
                                </td>
                            </tr>
                            <tr class="success">
                                <td>
                                    1
                                </td>
                                <td>
                                    TB - Monthly
                                </td>
                                <td>
                                    01/04/2012
                                </td>
                                <td>
                                    Approved
                                </td>
                            </tr>
                            <tr class="error">
                                <td>
                                    2
                                </td>
                                <td>
                                    TB - Monthly
                                </td>
                                <td>
                                    02/04/2012
                                </td>
                                <td>
                                    Declined
                                </td>
                            </tr>
                            <tr class="warning">
                                <td>
                                    3
                                </td>
                                <td>
                                    TB - Monthly
                                </td>
                                <td>
                                    03/04/2012
                                </td>
                                <td>
                                    Pending
                                </td>
                            </tr>
                            <tr class="info">
                                <td>
                                    4
                                </td>
                                <td>
                                    TB - Monthly
                                </td>
                                <td>
                                    04/04/2012
                                </td>
                                <td>
                                    Call in to confirm
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <!--  -->
                    <div class="tab-pane" id="panel-145670">
                        <p>
                            房间
                        </p>
                    </div>

                    <div class="tab-pane" id="panel-145671">
                        <p>
                            预约
                        </p>
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
        <!-- /.modal -->
    </div>
</div>
<script src="/static/js/manage.js"></script>
<script>


</script>
</body>
</html>
