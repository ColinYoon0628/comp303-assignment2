<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
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
  
	<div class="profile-container">
		<h1 class="profile-title"> Profile Information</h1>
		<form class="editProfile-form" action="editProfile" method="POST">
		<section>
		<table>	
			<tbody>
              <tr>
                  <td>First Name</td>
                  <td>:</td>
                  <td>${model.studentInfo.firstname }</td>
              </tr>
              <tr>
                  <td>Last Name</td>
                  <td>:</td>
                  <td>${model.studentInfo.lastname }</td>
              </tr>
              <tr>
                  <td>Email</td>
                  <td>:</td>
                  <td>${model.studentInfo.userName }</td>
              </tr>
              <tr>
                  <td>Address</td>
                  <td>:</td>
                  <td>${model.studentInfo.address }</td>
              </tr>
              <tr>
                  <td>City</td>
                  <td>:</td>
                  <td>${model.studentInfo.city }</td>
              </tr>
              <tr>
                  <td>Postal Code</td>
                  <td>:</td>
                  <td>${model.studentInfo.postalCode }</td>
              </tr>
              <tr>
                  <td>Phone Number</td>
                  <td>:</td>
                  <td>${model.studentInfo.stdPhone }</td>
              </tr>
              <tr>
                  <td>Doctor Name</td>
                  <td>:</td>
                  <td>${model.studentInfo.doctorName }</td>
              </tr>
              <tr>
                  <td>Doctor Phone Number</td>
                  <td>:</td>
                  <td>${model.studentInfo.docPhone }</td>
                    </tr>
                </tbody>
            </table>
            <div class="submit-btn-container">
 				<input class="submit-btn" type="submit" name="editProfile" value="Edit Profile"/>
</div>
				
    </section>
    </form>
	</div>
  
  
</body>
</html>