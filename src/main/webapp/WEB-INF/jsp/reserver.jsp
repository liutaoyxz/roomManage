<!DOCTYPE html>
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
    <title>预定酒店</title>
</head>
<body>
<div class="container-fluid">
    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
        <button class="ht_btn colo1" type="submit" onclick="window.location='/toHotelPage'">我是客人</button>
        <button class="ht_btn colo2" type="submit">我是东道主</button>
    </div>
</div>
</body>
</html>
