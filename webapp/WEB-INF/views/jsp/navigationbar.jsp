<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: huyut
  Date: 11-Oct-18
  Time: 1:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/welcome">Wheat Port</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
        <%--<button class="btn btn-success" id="signin" onclick="alert('SIGN IN called.')">SIGN IN</button>--%>
        <%--<button class="btn btn-info" id="signup" onclick="alert('SIGN UP called.')">SIGN UP</button>--%>
        <a class="btn btn-primary" href="/signin" style="margin-left: 10px;" role="button">Signin</a>
        <c:if test="${3000 > 2000}"><%--PUT SESSION CONDITION HERE--%>
            <a class="btn btn-success" href="/signup" style="margin-left: 10px;" role="button">Signup</a>
        </c:if>
    </div>
</nav>
<div>
    <c:choose>
        <c:when test="${globalmessagetype == 'info'}"><h3 style="color: dodgerblue">${globalmessagecontent}</h3></c:when>
        <c:when test="${globalmessagetype == 'error'}"><h3 style="color: red">${globalmessagecontent}</h3></c:when>
        <c:when test="${globalmessagetype == 'success'}"><h3 style="color: green">${globalmessagecontent}</h3></c:when>
        <c:when test="${globalmessagetype == 'warning'}"><h3 style="color: orange">${globalmessagecontent}</h3></c:when>
        <c:otherwise></c:otherwise>
    </c:choose>
</div>
