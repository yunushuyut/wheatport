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
    <jsp:include page="cascadingstyles.jsp"/>

</head>

<body>

<!-- Navigation -->
<div class="container">
    <jsp:include page="navigationbar.jsp"/>
</div>

<!-- Page Content -->
<div class="container">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Sign In</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        </div>
        <div class="modal-body">
            <form action="/WRITEREQUESTLINKHERE" method="post">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" class="form-control" name="username" placeholder="Username" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="text" class="form-control" name="password" placeholder="Password" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block btn-lg">Sign In</button>
                </div>
                <p class="hint-text"><a href="#">Forgot Password?</a></p>
            </form>
        </div>
        <div class="modal-footer">Don't have an account? <a href="#">Create one</a></div>
    </div>

</div>
<!-- /.container -->

<!-- Footer -->
<jsp:include page="footer.jsp"/>

<!-- Bootstrap core JavaScript -->
<jsp:include page="javascripts.jsp"/>

</body>
</html>
