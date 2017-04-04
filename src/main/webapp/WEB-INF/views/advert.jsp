<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>

    <link rel="shortcut icon" href="../../resources/icon/N.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>News</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <link href="${bootstrap}" rel="stylesheet"/>

</head>
<body>
<!-- Page Header -->
<jsp:include page="fragments/header.jsp"/>


<!--Entity News -->
<div class="container">
    <h3>${advert.head}</h3>
    <a href="/category/${advert.category}">${advert.category}</a>
    <p>${advert.joiningDate.toString().substring(0,16)}</p>
    <p>${advert.content}</p>
    <!--Buttons Edit Delete and Add -->
    <a title="Edit" href="../edit/${advert.id}" class="btn btn-default"><span
            class="glyphicon glyphicon-edit"></span></a>
    <a title="Delete" href="../delete/${advert.id}" class="btn btn-default"><span
            class="glyphicon glyphicon-remove"></span></a>
    <a title="Add news" href="/add" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span></a>

</div>


</div>
</body>
</html>

