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
		<input class="editProfile-input" type="text" name="firstname" required>
	</div>
	<div class="editProfile-input-container">
		<label>Last Name
		</label>
		<input class="editProfile-input" type="text" name="lastname" required>
	</div>
	<div class="editProfile-input-container">
		<label>Email
		</label>
		<input class="editProfile-input" type="text" name="userName" required>
	</div>
		<div class="editProfile-input-container">
		<label>Address</label>
		<input class="editProfile-input" type="text" name="address"/>
	</div>
		<div class="editProfile-input-container">
		<label>City</label>
		<input class="signIn-input" type="text" name="city"/>
	</div>
	<div class="editProfile-input-container">
		<label>Postal Code</label>
		<input class="signIn-input" type="text" name="postalCode"/>
	</div>
	<div class="signIn-input-container">
		<label>Student Phone number</label>
		<input class="editProfile-input" type="text" name="stdPhone"/>
	</div>
	<div class="editProfile-input-container">
		<label>Doctor Name</label>
		<input class="editProfile-input" type="text" name="doctorName"/>
	</div>
	<div class="editProfile-input-container">
		<label>Doctor Phone number</label>
		<input class="editProfile-input" type="text" name="docPhone"/>
	</div>
	<div class="edit-btn-container">
	    <input class="edit-btn" type="submit" name="Update Profile"/>
	</div>
   </form>
</div>
</body>
</html>