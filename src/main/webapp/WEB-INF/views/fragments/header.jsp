<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" href="../../resources/icon/N.ico">
    <title>Maven + Spring MVC + @JavaConfig</title>
    <%--<script><spring:url value="/resources/css/style.css.css" var="coreCss"/></script>--%>
    <script><spring:url value="/resources/css/bootstrap.css" var="bootstrapCss"/></script>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <link href="${coreCss}" rel="stylesheet"/>
</head>


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Search menu -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/">News portal main page</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav" style="float: right">
                <li class="dropdown">
                    <a title="Search" href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message
                            code="header.Search"/><span class="glyphicon glyphicon-search"></span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <!-- Search by name -->
                        <form action="${pageContext.request.contextPath}/name/" accept-charset="UTF-8">
                            <br>
                            <input type="text" class="form-control" name="name" placeholder="By Name"><br>
                            <input type="submit" class="btn btn-group" value="Submit">
                            <br>
                        </form>
                        <!-- Search by content -->
                        <form action="${pageContext.request.contextPath}/content/" accept-charset="UTF-8">
                            <br>
                            <input type="text" class="form-control" name="content" placeholder="By Content"><br>
                            <input type="submit" class="btn btn-group" value="Submit">
                            <br>
                        </form>
                        <!-- Search category -->
                        <form action="${pageContext.request.contextPath}/category/" accept-charset="UTF-8">
                            <br>
                            <input type="text" class="form-control" name="category" placeholder="By Category"><br>
                            <input type="submit" class="btn btn-group" value="Submit">
                            <br>
                        </form>

                        </form>
                    </ul>

                </li>
            </ul>
            <ul class="nav navbar-nav" style="float: right" >
                <%--<li><a href="/signup">Sign Up</a></li>--%>
                <li class="divider-vertical"></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
                    <div class="dropdown-menu" style="padding: 15px; padding-bottom: 10px;">
                        <form method="post" action="login" accept-charset="UTF-8">
                            <input style="margin-bottom: 15px;" type="text" placeholder="Username" id="username" name="username">
                            <input style="margin-bottom: 15px;" type="password" placeholder="Password" id="password" name="password">
                            <input style="float: left; margin-right: 10px;" type="checkbox" name="remember-me" id="remember-me" value="1">
                            <label class="string optional" for="user_remember_me"> Remember me</label>
                            <input class="btn btn-primary btn-block" type="submit" id="sign-in" value="Sign In">
                            <label style="text-align:center;margin-top:5px">or</label>
                            <input class="btn btn-primary btn-block" type="button" id="sign-in-google" value="Sign In with Google">
                            <input class="btn btn-primary btn-block" type="button" id="sign-in-twitter" value="Sign In with Twitter">          </form>
                    </div>
                </li>
            </ul>
            <ul class="nav navbar-nav" style="float: right">
                <li><a href="/signup">Sign Up</a></li>
            </ul>
        </div>

        <!-- /.navbar-collapse -->
    </div>

    <!-- /.container -->

</nav>
<br><br>

<spring:url value="/resources/js/jquery.js" var="coreJs"/>
<spring:url value="/resources/js/bootstrap.js" var="bootstrapJs"/>

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>

</body>
</html>