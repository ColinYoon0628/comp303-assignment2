<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in</title>
<link href="${pageContext.request.contextPath}/resources/css/sign.css" rel="stylesheet">

</head>
<body>
<div class="signIn-container">
		<h1 class="login-header">Sign in</h1>

<form class="signIn-form" action="signIn" method="POST">
	<div class="signIn-input-container">
		<label>StudentId 
		<span class="required">*</span>
		</label>
		<input class="signIn-input" type="text" name="studentId" required>
	</div>
	<div class="signIn-input-container">
		<label>User Name
		<span class="required">*</span>
		</label>
		<input class="signIn-input" type="text" name="userName" required>
	</div>
	<div class="signIn-input-container">
		<label>User password
		<span class="required">*</span>
		</label>
		<input class="signIn-input" type="password" name="userPassword" required>
	</div>
	<div class="signIn-input-container">
	     <label>First Name
	     <span class="required">*</span>
	     </label>
	     <input class="signIn-input" type="text" name="firstname" required/>
	</div>
	<div class="signIn-input-container">
		<label>Last Name
		<span class="required">*</span>
		</label>
		<input class="signIn-input" type="text" name="lastname" required/>
	</div>
		<div class="signIn-input-container">
		<label>Address</label>
		<input class="signIn-input" type="text" name="address"/>
	</div>
		<div class="signIn-input-container">
		<label>City</label>
		<input class="signIn-input" type="text" name="city"/>
	</div>
	<div class="signIn-input-container">
		<label>Postal Code</label>
		<input class="signIn-input" type="text" name="postalCode"/>
	</div>
	<div class="signIn-input-container">
		<label>Student Phone number</label>
		<input class="signIn-input" type="text" name="stdPhone"/>
	</div>
	<div class="signIn-input-container">
		<label>Doctor Name</label>
		<input class="signIn-input" type="text" name="doctorName"/>
	</div>
	<div class="signIn-input-container">
		<label>Doctor Phone number</label>
		<input class="signIn-input" type="text" name="docPhone"/>
	</div>
	<div class="submit-btn-container">
	    <input class="submit-btn" type="submit" name="Add Student"/>
	</div>
   </form>
</div>

</body>
</html>