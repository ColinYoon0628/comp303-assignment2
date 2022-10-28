<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
</head>
<body>
<div class="topnav">
  <a class="active" href="home">Home</a>
  <a>
    <form class="nav-btn" action="navigateToProfile" method="post">
		<input class="nav-item" type="submit" value="Profile"/>
  </form>  
  </a>
  <a>
    <form class="nav-btn" action="navigateToHistory" method="post">
		<input class="nav-item" type="submit" value="History"/>
  </form>
  </a>
</div>
  <h2>Hello ${model.studentInfo.firstname}</h2>
</body>
</html>