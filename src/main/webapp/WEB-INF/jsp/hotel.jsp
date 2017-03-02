<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: ltlxy
  Date: 2017/2/28
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- 固定头部 -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="/static/bootstrap/css/bootstrap.min.css"/>">
    <script src="<c:url value="/static/jquery/jquery-3.1.1.min.js"/>"></script>
    <script src="<c:url value="/static/bootstrap/js/bootstrap.min.js"/>"></script>
    <!-- 固定头部 -->

    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap-datetimepicker.min.css"/>">
    <script src="<c:url value="/static/js/bootstrap-datetimepicker.min.js"/>"></script>
    <script src="<c:url value="/static/js/locales/bootstrap-datetimepicker.zh-CN.js"/>" charset="utf-8"></script>
    <title>预定</title>
</head>
<body>

<div class="container-fluid">
    <form class="form-inline">
        <div class="form-group">
            <label for="name">尊姓大名</label>
            <input type="text" class="form-control" name="name"  id="name" placeholder="姓名">
        </div>
        <div class="form-group">
            <label for="phone">电话</label>
            <input type="text" class="form-control" name="phone" id="phone" placeholder="电话">
        </div>
        <div class="form-group">
            <label for="inTime">入驻时间</label>
            <input type="text" class="form-control" value="2017-03-08 20:00" id="inTime" >
        </div>

        <div class="form-group">
            <label for="expectOutTime">预计离开时间</label>
            <input type="text" class="form-control" value="2017-03-09 08:00" id="expectOutTime" >
        </div>

        <div class="form-group">
            <label for="gender">性别</label>
            <select class="form-control" value="2017-03-09 08:00" id="gender" >
                <option value="1">
                    男
                </option>
                <option value="2">
                    女
                </option>
            </select>
        </div>

        <button type="button" id="tell" class="btn btn-default">告诉他</button>
    </form>

    <script src="<c:url value="/static/js/hotel.js"/>"></script>
</div>
</body>
</html>