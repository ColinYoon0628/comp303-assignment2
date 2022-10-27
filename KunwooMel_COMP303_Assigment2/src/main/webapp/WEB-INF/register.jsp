<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here</title>
<link href="${pageContext.request.contextPath}/resources/css/registration.css" rel="stylesheet">
</head>
<body>

<div class="registration">
	<h1>Registration Info </h1>
	<form class="register-form" action="registeredSports" method="POST">
	<div class="register-input-container">
		<label></label>
		<input class="register-input" type="hidden" name="registrationId">
	</div>
	Student ID: ${model.studentInfo.studentId}
	<br>
	Student : ${model.studentInfo.userName }
	<br>
	Sport Name: ${model.selectedSports.sportName}
	<br>
	Coach Name: ${model.selectedSports.coachName}
	<br>
	Amount Paid: $${model.selectedSports.fee }
	<div class="signIn-input-container">
		<label>Start Date:
		<span class="required">*</span>
		</label>
		<input class="register-input" type="date" name="startDate" required>
	</div>
	<div class="signIn-input-container">
		<label>Number of Shirts:
		<span class="required">*</span>
		</label>
		<input class="register-input" type="number" name="numberOfShirts" required>
	</div>
	<div class="signIn-input-container">
		<label>Number of Shorts:
		<span class="required">*</span>
		</label>
		<input class="register-input" type="number" name="numberOfShorts" required>
	</div>
	<div class="submit-btn-container">
	    <input class="submit-btn" type="submit" name="Register Sport" value="Register Sports"/>
	</div>
	
	
	</form>
	
	
	
	
</div>	
	
</body>
</html>