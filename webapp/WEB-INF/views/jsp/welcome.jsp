<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%--<title><spring:message code="app.title"/></title>--%>

    <%--<spring:theme code="app.stylesheet" var="themeName"/>--%>
    <%--<link href='<spring:url value="/resources/views/theme/css/${themeName}"/>' rel="stylesheet"/>--%>
    <%--<link href="<c:url value="/WEB-INF/resources/views/vendor/bootstrap/css/bootstrap.css" />" rel="stylesheet">--%>
    <%--<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="/views/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="../views/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="/res/views/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="../res/views/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">--%>
    <link href="res/views/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">
    <button type="button" class="btn">Basic</button>
    <button type="button" class="btn btn-default">Default</button>
    <button type="button" class="btn btn-primary">Primary</button>
    <button type="button" class="btn btn-success">Success</button>
    <button type="button" class="btn btn-info">Info</button>
    <button type="button" class="btn btn-warning">Warning</button>
    <button type="button" class="btn btn-danger">Danger</button>
    <button type="button" class="btn btn-link">Link</button>
</div>
<spring:theme code="greeting" var="themeName" />
<p>${themeName}</p>
<%--<span th:text="#{lang.change}"></span>:--%>
<%--<select id="locales">--%>
    <%--<option value=""></option>--%>
    <%--<option value="en" th:text="#{lang.eng}"></option>--%>
    <%--<option value="fr" th:text="#{lang.tr}"></option>--%>
<%--</select>--%>

<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
    <%--<a class="navbar-brand" href="#"><spring:message code="app.title"/></a>--%>
    <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"--%>
            <%--aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--<span class="navbar-toggler-icon"></span>--%>
    <%--</button>--%>
    <%--<div class="collapse navbar-collapse" id="navbarCollapse">--%>
        <%--<ul class="navbar-nav mr-auto">--%>
            <%--<li class="nav-item active"><a class="nav-link" href="#"><spring:message code="app.nav.home"/> <span--%>
                    <%--class="sr-only"></span></a></li>--%>
        <%--</ul>--%>
    <%--</div>--%>
</nav>

<%--<div role="main" class="container">--%>
    <%--<div class="jumbotron">--%>
        <%--<h1><spring:message code="app.page.header"/></h1>--%>
        <%--<p class="lead"><spring:message code="app.page.body"/></p>--%>


        <%--<div class="dropdown">--%>
            <%--<button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton"--%>
                    <%--data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message--%>
                    <%--code="app.theme.title"/></button>--%>
            <%--<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">--%>
                <%--<a class="dropdown-item" href="?theme=pulse"><spring:message code="app.theme.pulse"/></a>--%>
                <%--<a class="dropdown-item" href="?theme=cerulean"><spring:message code="app.theme.cerulean"/></a>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<hr/>--%>
        <%--<!-- Dropdown for selecting language -->--%>
        <%--<div class="dropdown">--%>
            <%--<button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton"--%>
                    <%--data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message--%>
                    <%--code="app.lang.title"/></button>--%>
            <%--<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">--%>
                <%--<a class="dropdown-item" href="?lang=en"><spring:message code="app.lang.english"/></a>--%>
                <%--<a class="dropdown-item" href="?lang=en"><spring:message code="app.lang.turkish"/></a>--%>
            <%--</div>--%>
        <%--</div>--%>

    <%--</div>--%>
<%--</div>--%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>