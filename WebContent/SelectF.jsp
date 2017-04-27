<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/common.jsp"%>
<%@include file="../common/authentication.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>


  <title></title>
   <link rel="stylesheet" href="/<%=contextRoot %>/css/reset.css" type="text/css" />
   <link rel="stylesheet" href="/<%=contextRoot %>/css/style.css" media="screen" type="text/css" />
   <link href="/<%=contextRoot %>/css/common.css" rel="stylesheet">

</head>


<body>

<jsp:include page="common/header.jsp" />
  <div class="radmenu"><a href="#" class="show" >wealthGO</a>

  <ul>
    <li>
      <a href="localhost:8080#" class="">Indicators</a>
      
    </li>
    <li>
      <a href="query.jsp">Queries</a>
    </li>
    <li>
      <a href="www.baidu.com#">Prediction</a>
    </li>

  </ul>
</div>

  <script src="/<%=contextRoot %>/js/index.js"></script>

</body>

</html>