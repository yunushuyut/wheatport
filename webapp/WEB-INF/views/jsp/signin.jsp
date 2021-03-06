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
<!-- Navigation -->

<!-- Page Content -->
<body data-gr-c-s-loaded="true">
<jsp:include page="navigationbar.jsp"/>

<div class="container">
    <div class="col-6 col-sm-6 col-md-6 mx-auto">

        <form action="/signin" method="POST" class="register-form" modelAttribute="personform">
            <div class="text-center mb-4">
                <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt=""
                     width="72"
                     height="72">
                <h1 class="h3 mb-3 font-weight-normal">WHEATPORT SIGNIN</h1>
                <p>Build form controls with floating labels via the <code>:placeholder-shown</code> pseudo-element. <a
                        href="https://caniuse.com/#feat=css-placeholder-shown">Works in latest Chrome, Safari, and
                    Firefox.</a>
                </p>
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
                    <button class="btn btn-default regbutton">Sign In</button>
                </div>
            </div>
        </form>

        <p class="mt-5 mb-3 text-dark text-left">Instruction</p>
        <div class="col-12 mx-auto" style="padding: 15px 0px 60px 0px">
            We don't have to be a genius to be aware of global environmental mess we created over the years.
            The easiest thing we can do for our planet is recycling. Recycling is the process of turning used products-from household use,
            manufacturing and many others- into something profitable and advantageous and thereby reducing
            their negative effects on the environment to make the world a better place to live.
            We should all be living in a clean world and that is why a large part of the society recycles.
            Recycling has been around for thousands of years, actually everyone practice some kind of it even
            though the idea of recycling was introduced in 1970's during the environmental movement.
            As many studies have shown, recycling a
        </div>

    </div>
</div>


<!-- Footer -->
<jsp:include page="footer.jsp"/>

<!-- Bootstrap core JavaScript -->
<jsp:include page="javascripts.jsp"/>
</body>
<!-- /.container -->


</html>
