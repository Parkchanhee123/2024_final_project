<%--
  User: 1
  Date: 2024-11-05
  Time: 오후 2:46
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>

<script>
    let login = {

        init: function () {
            $('#login_form > button').click(() => {
                this.check();
            });
            // Enter 키 눌렀을 때 폼 제출되도록 추가
            $('#login_form').on('keyup', (event) => {
                if (event.keyCode === 13) {  // Enter key code is 13
                    this.check();
                }
            });
        },

        check: function () {
            let id = $('#id').val();
            let pwd = $('#pwd').val();
            if (id == '' || id == null) {
                alert('id is mandatory');
                $('#id').focus();
                return;
            }
            if (pwd == '' || pwd == null) {
                alert('pwd is mandatory');
                $('#pwd').focus();
                return;
            }
            this.send();
        },

        send: function () {
            // method, action
            $('#login_form').attr('method', 'post');
            $('#login_form').attr('action', '/loginimpl');
            $('#login_form').submit();
        }
    };

    $(function () {
        login.init();
    })
</script>

<h1></h1>
<div class="col-sm-10" style="border-top: 400px">
    <h2 style="color: black">Login</h2>
    <div class="row">
        <div class="col-sm-5">
            <form id="login_form">
                <div class="form-group">
                    <label for="id">id: </label>
                    <input type="text" class="form-control" placeholder="Enter id" id="id" name="id" value="id33">
                </div>
                <%-- value는 그냥 기본값 넣어주는거--%>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="pwd"
                           value="pwd33">
                </div>
                <button type="button" class="btn btn-primary">Submit</button>
            </form>
            <a href="<c:url value="/oauth/kakao"/> ">
                <img src="<c:url value="/img/kakao_login_medium_narrow.png"/> " style="margin-top: 15px">
            </a>
        </div>
    </div>
</div>
