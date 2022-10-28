<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link href="${pageContext.request.contextPath}/resources/css/sign.css" rel="stylesheet">
</head>
<body>
<div class="editProfile-container">
		<h1 class="edit-header">Edit Profile</h1>

<form class="editProfile-form" action="update" method="POST">

	<div class="editProfile-input-container">
		<label>First Name 
		</label>
		<input class="editProfile-input" type="text" name="firstname" value="${model.studentInfo.firstname}" required>
	</div>
	<div class="editProfile-input-container">
		<label>Last Name
		</label>
		<input class="editProfile-input" type="text" name="lastname" value="${model.studentInfo.lastname}" required>
	</div>
	<div class="editProfile-input-container">
		<label>Email
		</label>
		<input class="editProfile-input" type="text" name="userName" value="${model.studentInfo.userName}" required>
	</div>
		<div class="editProfile-input-container">
		<label>Address</label>
		<input class="editProfile-input" type="text" name="address" value="${model.studentInfo.address}"/>
	</div>
		<div class="editProfile-input-container">
		<label>City</label>
		<input class="signIn-input" type="text" name="city" value="${model.studentInfo.city}"/>
	</div>
	<div class="editProfile-input-container">
		<label>Postal Code</label>
		<input class="signIn-input" type="text" name="postalCode" value="${model.studentInfo.postalCode}"/>
	</div>
	<div class="signIn-input-container">
		<label>Student Phone number</label>
		<input class="editProfile-input" type="text" name="stdPhone" value="${model.studentInfo.stdPhone}"/>
	</div>
	<div class="editProfile-input-container">
		<label>Doctor Name</label>
		<input class="editProfile-input" type="text" name="doctorName" value="${model.studentInfo.doctorName}"/>
	</div>
	<div class="editProfile-input-container">
		<label>Doctor Phone number</label>
		<input class="editProfile-input" type="text" name="docPhone" value="${model.studentInfo.docPhone}"/>
	</div>
	<div class="edit-btn-container">
	    <input class="edit-btn" type="submit" name="Update Profile"/>
	</div>
   </form>
</div>
</body>
</html>