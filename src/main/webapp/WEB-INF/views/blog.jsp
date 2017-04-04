<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../resources/icon/N.ico">

    <title>Test Task by Max</title>

    <!-- Bootstrap core CSS -->
    <link href="../../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <script src="../../resources/css/bootstrap.css" rel="stylesheet"></script>
    <script src="../../resources/css/bootstrap.min.css" rel="stylesheet"></script>
</head>

<body>
<!--import Header Page-->
<jsp:include page="fragments/header.jsp"/>

<%--<div class="container">--%>

    <%--<div class="starter-template">--%>

        <%--<p class="lead"><br></p>--%>
    <%--</div>--%>

<%--</div>--%>

<div class="container">

    <br><br>
    <div class="blog-header">
        <div style="float: right"><a title="Add news" href="/add" class="btn btn-default"><span
                class="glyphicon glyphicon-plus"></span></a></div>
        <p class="lead blog-description">IT News from around the world</p>
    </div>

    <div class="row">
        <div class="col-sm-8 blog-main">

            <div>

                <!-- Rendering list  of news -->
                <c:forEach var="advert" items="${listOfAdverts}">
                    <div>
                        <!-- Rendering news id -->
                        <a href="/advert/${advert.id}"></a>

                        <h3>
                            <!-- Rendering news head and link to finding by id -->
                            <a href="/advert/${advert.id}">${advert.head}</a>
                            <!-- Rendering news add date -->
                            <small><p>${advert.joiningDate.toString().substring(0,16)}</p></small>
                            <!-- Rendering news category  and link to finding by category -->
                        </h3>
                        <a href="/category/${advert.category}">${advert.category}</a>
                        <div class="text-left">
                            <div class="column">
                                <!-- Rendering news substring content  -->
                                <c:set var="string1" value="${advert.content}"/>
                                <p>${fn:substring(string1, 0, 500)}</p>
                                <!-- Link to read more -->
                                <a title="Read More" href="/advert/${advert.id}" class="btn btn-default">Read
                                    more...</a>
                                <!-- Link to edit -->
                                <a title="Edit" href="../edit/${advert.id}" class="btn btn-default"><span
                                        class="glyphicon glyphicon-edit"></span></a>
                                <!-- Link to delete -->
                                <a title="Delete" href="../delete/${advert.id}" class="btn btn-default"><span
                                        class="glyphicon glyphicon-remove"></span></a>

                            </div>
                        </div>


                    </div>


                </c:forEach>

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
                    <li><a href="/test">Test</a></li>
                </ol>
            </div>
            <div class="sidebar-module">
            </div>
        </div><!-- /.blog-sidebar -->
    </div>

    <!-- Footer -->
    <div class="row">
        <div class="col-sm-8 blog-main">
            <div class="blog-footer">
                <h4 align="center">Test Task by Max</h4>
                <p>
                    <a href="#">Back to top</a>
                </p>
            </div>
        </div>
    </div>
</div><!-- /.container -->
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>--%>
<%--<script src="../../dist/js/bootstrap.min.js"></script>--%>
<%--<script src="../../assets/js/docs.min.js"></script>--%>
<script href="../../resources/js/bootstrap.js" rel="stylesheet"></script>
<script href="../../resources/js/bootstrap.min.js" rel="stylesheet"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</body>
</html>