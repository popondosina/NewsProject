<%--
  Created by IntelliJ IDEA.
  User: nolik
  Date: 11.03.17
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>

    <link rel="shortcut icon" href="../../resources/icon/N.ico">
    <title>Edit</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <spring:url value="/resources/css/3-col-portfolio.css" var="startertemplate"/>
    <link href="${bootstrap}" rel="stylesheet"/>
    <link href="${startertemplate}" rel="stylesheet"/>
    <style>

        .error {
            color: #ff0000;
        }
    </style>
</head>
<body>
<!-- import Header-->
<jsp:include page="fragments/header.jsp"/>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Panel for editing topics
        </h1>
    </div>
</div>
<!-- Menu for edit -->
<div class="row">
    <div class="col-md-8">
        <div class="control-group form-group">
            <div class="controls">
                <form:form method="POST" modelAttribute="news">
                    <form:input type="hidden" path="id" id="id"/>

                    <div class="control-group form-group">
                        <div class="controls">
                            <!-- Input Name -->
                            <label for="head">Name: </label>
                            <form:input path="head" class="form-control" id="head"/>
                            <form:errors path="head" cssClass="error"/>
                        </div>
                    </div>
                    <form:input type="hidden" path="joiningDate" id="joiningDate"/>
                    <!-- Input category -->
                    <label for="category">Category: </label>
                    <form:input path="category" class="form-control" id="category"/>
                    <form:errors path="category" cssClass="error"/>
                    <!-- Input Content -->
                    <label for="content">Content: </label>
                    <textarea rows="10" cols="100" class="form-control" id="content" name="content" maxlength="9999"
                              style="resize:none">${news.content}</textarea>
                    <form:errors path="content" cssClass="error"/>
                    <td colspan="3">
                        <!-- Submit button -->
                        <c:choose>
                            <c:when test="${edit}">
                                <input type="submit" class="btn btn-primary" value="Update"/>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" class="btn btn-primary" value="Add new topic"/>
                            </c:otherwise>
                        </c:choose>
                    </td>


                </form:form>
            </div>
        </div>
    </div>
    <!-- List of categories with links to category -->
    <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
        <div class="sidebar-module">
            <h4>Categories</h4>
            <ol class="list-unstyled">
                <li><a href="/category/development">Development</a></li>
                <li><a href="/category/management">Management</a></li>
                <li><a href="/category/administration">Administration</a></li>
                <li><a href="/category/design">Design</a></li>
                <li><a href="/category/marketing">Marketing</a></li>
                <li><a href="/category/information security">Information Security</a></li>
                <li><a href="/category/game development">Game Development</a></li>
                <li><a href="/category/website development">Website Development</a></li>
                <li><a href="/category/system administration">System Administration</a></li>
                <li><a href="/category/machine learning">Machine Learning</a></li>
                <li><a href="/category/java">Java</a></li>
            </ol>
        </div>
    </div><!-- /.blog-sidebar -->

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>
