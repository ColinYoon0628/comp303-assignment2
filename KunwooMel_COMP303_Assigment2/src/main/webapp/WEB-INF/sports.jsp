<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sports Registration</title>
</head>
<body>

<div class="signIn-container">
		<h1 class="login-header">Sports Registration</h1>

<form class="sportRegistration-form" action="sportRegistratoin" method="POST">
	<div class="sportRegistration-input-container">
		<label>Sport ID
		</label>
		<input class="sportRegistration-input" type="text" name="sportId" required>
	</div>
	<div class="signIn-input-container">
		<label>Sports Name
		<span class="required">*</span>
		</label>
		<select id="sportName" name="sportName">
	<option value=""></option>
    <option value="Soccer">Soccer</option>
    <option value="Basketball">Basketball</option>
    <option value="Swimming">Swimming</option>
    <option value="Golf">Golf</option>
    <option value="Boxing">Boxing</option>
  	</select>
	</div>
	<div class="signIn-input-container">
		<label>Duration
		</label>
		<input class="sportRegistration-input" type="text" name="duration" required>
	</div>
	<div class="signIn-input-container">
	     <label>Fee
	     </label>
	     <input class="sportRegistration-input" type="text" name="fee" required/>
	</div>
	<div class="signIn-input-container">
		<label>Coach Name
		</label>
		<input class="sportRegistration-input" type="text" name="coachName" required/>
	</div>
   </form>
</div>

</body>
</html>