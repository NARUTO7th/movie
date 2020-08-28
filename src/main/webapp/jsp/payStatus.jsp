<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%--%>
<%--	User user = (User)request.getSession().getAttribute("user");--%>
<%--	if(user == null){--%>
<%--		response.sendRedirect("./login.jsp");--%>
<%--	}--%>
<%--%>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/logo.ico"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/header.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/paystatus.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/footer.css">
    <script src="${pageContext.request.contextPath}/static/js/header.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/static/js/Api.js"></script>
    <script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css" media="all">
    <title>鹰眼电影-支付成功</title>
</head>
<body>

    <!-- 导航栏 -->
    <jsp:include page="header.jsp"/>

    <!-- 占位符 -->
    <div style="margin-top: 90px;"></div>

    <!-- 主体 -->
    <div class="container">
        <div class="order-progress-bar">
            <div class="step first done">
                <span class="step-num">1</span>
                <div class="bar"></div>
                <span class="step-next">选择影片场次</span>
            </div>
            <div class="step done">
                <span class="step-num">2</span>
                <div class="bar"></div>
                <span class="step-next">选择座位</span>
            </div>
            <div class="step done">
                <span class="step-num">3</span>
                <div class="bar"></div>
                <span class="step-next">付款</span>
            </div>
            <div class="step last done">
                <span class="step-num">4</span>
                <div class="bar"></div>
                <span class="step-next">影院取票观影</span>
            </div>
        </div>
        <div class="main-paystatus">
            <img src="${pageContext.request.contextPath}/static/images/success.jpg"/>
            <p class="statustext">已完成支付</p>
        </div>
        <div class="right">
            <p class="warning">
                该页面关闭后可以在<span class="attention">个人订单</span>页面查看订单信息
            </p>
            <div>
                <div class="pay-btn" onclick="returnCenter()">返回个人订单</div>
            </div>
        </div>
    </div>

    <!-- 脚 -->
    <jsp:include page="footer.jsp"/>

    <script>
        var clientHeight = document.documentElement.clientHeight;

        window.onload = function(){
			 initHeader();
        }
        
        function returnCenter(){
            window.location.href = "./center.jsp"
        }

    </script>
</body>
</html>