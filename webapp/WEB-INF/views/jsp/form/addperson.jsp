<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>WheatPort-Signin</title>
    <jsp:include page="../cascadingstyles.jsp"/>

</head>
<!-- Navigation -->

<!-- Page Content -->
<body data-gr-c-s-loaded="true">
<jsp:include page="../navigationbar.jsp"/>

<div class="container">
    <div class="container-fluid">
        <form action="/add-person" method="POST" class="register-form" modelAttribute="personform">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-lg-4">
                    <label for="name">NAME</label>
                    <input name="name" class="form-control" type="text">
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-lg-4">
                    <label for="email">EMAIL</label>
                    <input name="email" class="form-control" type="email">
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4 col-lg-4">
                    <label for="password">PASSWORD</label>
                    <input name="password" class="form-control" type="password">
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                    <button class="btn btn-default regbutton">Register</button>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
                    <button class="btn btn-default logbutton">Sign up</button>
                </div>
            </div>
        </form>
    </div>
</div>


<!-- Footer -->
<jsp:include page="../footer.jsp"/>

<!-- Bootstrap core JavaScript -->
<jsp:include page="../javascripts.jsp"/>
</body>
<!-- /.container -->


</html>
