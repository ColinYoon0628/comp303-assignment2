<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sports Registration</title>
<link href="${pageContext.request.contextPath}/resources/css/sports.css" rel="stylesheet">

</head>
<body>
	<form class="sport-form" action="selectSports" method="post">
		<h1>Select Your Course</h1>
		<table>
		  <tr>
		    <td class="centent" style="padding:5px"> </td>
		    <td class="centent" style="padding:5px">#</td>
		    <td class="centent" style="padding:5px">Course</td>
		    <td class="centent" style="padding:5px">Fee</td>
		    <td class="centent" style="padding:5px">Duration</td>
		    <td class="centent" style="padding:5px">Coach</td>
		    
		  </tr>
		  <c:forEach var="sp" items="${model.sportsList}">
	        <tr>
	           <td class="centent" style="padding:5px"><input class="sport-checkbox" type="checkbox" value="${sp.sportId}" name="sportsCheckbox"></td>
	           <td class="centent" style="padding:5px"><c:out value="${sp.sportId}"/></td>
	           <td class="centent" style="padding:5px"><c:out value="${sp.sportName}"/></td>
	           <td class="centent" style="padding:5px"><c:out value="$ ${sp.fee}"/></td>
	           <td class="centent" style="padding:5px"><c:out value="${sp.duration} months"/></td>	           
	           <td class="centent" style="padding:5px"><c:out value="${sp.coachName}"/></td>
	        </tr>
      </c:forEach>
		</table>
		<input class="sport-btn" type="submit" value="Select"/>
		
	</form>


</body>
</html>