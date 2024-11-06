<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <title>
        건어물
    </title>
    <!-- Fonts and icons -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet"/>
    <!-- Nucleo Icons -->
    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-icons.css" rel="stylesheet"/>
    <link href="https://demos.creative-tim.com/argon-dashboard-pro/assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- CSS Files -->
    <link id="pagestyle" href="<c:url value="/css/argon-dashboard.css?v=2.1.0"/> " rel="stylesheet"/>

    <%-- 카카오맵 api --%>
    <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0601f2c8782b31d6ed7ddf38b80dfbe8"></script>

    <%-- 웹소켓 라이브러리    --%>
    <script src="/webjars/sockjs-client/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/stomp.min.js"></script>

    <%--  highcharts Library  --%>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body class="g-sidenav-show bg-gray-100">
<%--<div class="min-height-300 bg-dark position-absolute w-100" style="background-image: url('<c:url value="/img/bruce-mars.jpg"/>')"></div>--%>
<div class="min-height-300 bg-dark position-absolute w-100" style="background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/profile-layout-header.jpg'); background-position-y: 50%;">
    <span class="mask bg-primary opacity-6"></span>
</div>
<main class="main-content position-relative border-radius-lg ">
    <!-- 상단 내비게이션 바 -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
        <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Pages</a></li>
                    <li class="breadcrumb-item text-sm text-white active" aria-current="page">Dashboard</li>
                </ol>
                <h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                    <div class="input-group">
                        <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Type here...">
                    </div>
                </div>
                <ul class="navbar-nav justify-content-end">
                    <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                        <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                            <div class="sidenav-toggler-inner">
                                <i class="sidenav-toggler-line bg-white"></i>
                                <i class="sidenav-toggler-line bg-white"></i>
                                <i class="sidenav-toggler-line bg-white"></i>
                            </div>
                        </a>
                    </li>
                    <!-- 사용자 로그인 상태 확인 -->
                    <li class="nav-item d-flex align-items-center">
                        <i class="fa fa-user me-sm-1"></i>
                        <c:choose>
                            <c:when test="${sessionScope.loginid == null}">
                                <!-- 로그인되지 않은 경우 -->
                                <a href="<c:url value='/login'/>" class="nav-link text-white font-weight-bold px-0">
                                    <span class="d-sm-inline d-none">Sign In</span>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <!-- 로그인된 경우 사용자 ID 및 Logout 표시 -->
                                <span class="nav-link text-white font-weight-bold px-0">
                                        ${sessionScope.loginid.userId}
                                </span>
                                <a class="nav-link text-white font-weight-bold px-0" href="<c:url value='/logoutimpl'/>" style="margin-left: 15px">
                                    Logout
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->

    <div class="container-fluid" style="margin-top:30px">
        <div class="row">
            <!-- 사이드바 (왼쪽) -->
            <div class="col-auto" style="max-width: 16.625rem;">
                <c:choose>
                    <c:when test="${left == null}">
                        <jsp:include page="left.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <jsp:include page="${left}.jsp"/>
                    </c:otherwise>
                </c:choose>
            </div>

            <!-- center (오른쪽) -->
            <div>
                <c:choose>
                    <c:when test="${center == null}">
                        <jsp:include page="center.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <jsp:include page="${center}.jsp"/>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</main>
</body>

</html>
