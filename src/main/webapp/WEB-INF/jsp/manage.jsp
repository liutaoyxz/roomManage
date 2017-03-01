<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>入驻管理</title>

    <!-- 固定头部 -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <script src="/static/jquery/jquery-3.1.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <!-- 固定头部 -->

    <script src="/static/js/hotel.js"></script>
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
                        <p>
                            酒店管理
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
