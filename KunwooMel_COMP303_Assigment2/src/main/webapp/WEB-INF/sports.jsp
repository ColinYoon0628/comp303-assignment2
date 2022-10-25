<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sports Registration</title>
</head>
<body>
<h1>${model.studentInfo.userName}2</h1>
<h1>${model.sportsList[0].getFee()}</h1>
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Duration</th><th>Fee</th><th>Coach Name</th></tr>  
   <c:forEach var="sp" items="${model.sportsList}">   
   <tr>  
   <td>${sp.getSportId()}</td>  
   <td>${sp.getSportName()}</td>  
   <td>${sp.getDuration()}</td>  
   <td> <fmt:formatNumber value="${sp.getFee()}" type="currency"/></td>
   <td>${sp.getCoachName()}</td> 
   </tr>  
   </c:forEach>  
   </table> 
   <c:forEach var="sp" items="${model.sportsList}">
        <tr>
               <td><c:out value="${sp.getSportId()}"/></td>
               <td><c:out value="${sp.getSportName()}"/></td>
               <td><c:out value="${sp.getCoachName()}"/></td>
        </tr>
      </c:forEach>
</body>
</html>