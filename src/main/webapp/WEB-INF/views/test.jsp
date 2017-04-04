<%--
  Created by IntelliJ IDEA.
  User: max
  Date: 04.04.17
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <script><spring:url value="/resources/css/style.css" var="coreCss"/></script>
    <script><spring:url value="../../resources/css/bootstrap.css" var="bootstrapCss"/></script>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <link href="${coreCss}" rel="stylesheet"/>
    <title>Title</title>
</head>
<body>

    <jsp:include page="fragments/header.jsp"/>

<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 well ">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-xl-2">
            <span class="srchLabel">Search</span>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <input placeholder="Search..." type="text" class="typeahead tt-query" autocomplete="off" spellcheck="false" id="txtSearch">
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
            <button type="button" class="btn btn-primary btnSearchOptions">Search Options</button>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-12 col-xl-12">
      <span class="engAlpha">
            <div class="pagination pagination-large">
               <ul class="pager">
               </ul>
            </div>

         </span>
        </div>
    </div>

</div>
<div class="btn-group">
<script type="text/javascript" src="/resources/js/custum.js"></script>
    </div>
</body>
</html>
