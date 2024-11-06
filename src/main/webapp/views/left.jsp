<%--
  User: 1
  Date: 2024-11-01
  Time: 오후 1:56
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--부트스트랩 아이콘 링크 추가--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.0/font/bootstrap-icons.min.css">



<html>
<body>
<aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 "
     id="sidenav-main">
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
           aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href="<c:url value="/"/>">
            <img src="<c:url value="/img/download.jpeg"/>" width="50px" height="50px"
                 class="navbar-brand-img h-100"
                 alt="main_logo">
            <span class="ms-1 font-weight-bold">건어물</span>
        </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link active" href="../pages/dashboard.html">
                    <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="ni ni-tv-2 text-dark text-sm opacity-10"></i>
                    </div>
                    <span class="nav-link-text ms-1">Dashboard</span>
                </a>
            </li>

            <div class="left-dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="energeDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="bi bi-lightbulb text-dark text-sm opacity-10"></i> <!-- 에너지 관리 아이콘 -->
                    </div>
                    <span class="nav-link-text ms-1">에너지관리</span>
                </a>
                <ul class="dropdown-menu" aria-labelledby="energyDropdown">
                    <li><a class="dropdown-item" href="#">전기 관리</a></li>
                    <li><a class="dropdown-item" href="#">물 관리</a></li>
                    <li><a class="dropdown-item" href="#">가스 관리</a></li>
                </ul>
            </div>


        <%--주차관리 및 아이콘 추가--%>
            <div clas="left-dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="pakingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="bi bi-car-front-fill text-dark text-sm opacity-10"></i> <!-- 주차관리 아이콘 -->
                    </div>
                    <span class="nav-link-text ms-1">주차관리</span>
                </a>
                <ul class="dropdown-menu" aria-labelledby="energyDropdown">
                    <li><a class="dropdown-item" href="#">주차 자리확인</a></li>
                    <li><a class="dropdown-item" href="#">주차 정산</a></li>
                </ul>
            </div>


            <%--공지사항 및 아이콘 추가--%>
            <li class="nav-item">
                <a class="nav-link" href="../pages/virtual-reality.html">
                    <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="bi bi-asterisk text-dark text-sm opacity-10"></i> <!-- 공지사항 아이콘 -->
                    </div>
                    <span class="nav-link-text ms-1">공지사항</span>
                </a>
            </li>

            <li class="nav-item mt-3">
                <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">회원</h6>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="<c:url value="/login"/> ">
                    <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="bi bi-box-arrow-left text-dark opacity-10" style="font-size: 1.2em; text-shadow: 1px 0 currentColor, -1px 0 currentColor, 0 1px currentColor, 0 -1px currentColor;"></i>

                    </div>
                    <span class="nav-link-text ms-1">로그인</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="../pages/profile.html">
                    <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
                    </div>
                    <span class="nav-link-text ms-1">회원가입</span>
                </a>
            </li>
        </ul>
    </div>
    <div class="sidenav-footer mx-3 ">
        <div class="card card-plain shadow-none" id="sidenavCard">
            <img class="w-50 mx-auto" src="<c:url value="/img/gunamul2.jpeg"/>"
                 alt="sidebar_illustration">
            <div class="card-body text-center p-3 w-100 pt-0">
            </div>
        </div>
    </div>
</aside>
</body>
</html>