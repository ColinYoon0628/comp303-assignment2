<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">

</head>
<body>
   <div class="topnav">
  <a href="home">Home</a>
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
	<div class="history-container">
		<h1 class="history-title"> Registered Course</h1>
		<section>	
			<header>
		        <div class="col">Registration Id</div>
		        <div class="col">Sport name</div>
		        <div class="col">Coach Name</div>
    		    <div class="col">Start date</div>
    		    <div class="col">Total payment</div>   
	      	</header>
	<c:forEach var="item" items="${model.registeredSportsList}">
      <div class="row">
        <div class="col"><c:out value="${item.registrationId}"/></div>
        <div class="col"><c:out value="${item.sportName}"/></div>
        <div class="col"><c:out value="${item.coachName}"/></div>
        <div class="col"><c:out value="${item.startDate}"/></div>
        <div class="col"><c:out value="$ ${item.amountPaid}"/></div>     
      </div>
      </c:forEach>

    </section>
	</div>
</body>
</html>