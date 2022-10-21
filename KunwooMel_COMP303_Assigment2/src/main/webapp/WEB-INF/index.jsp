<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kunwoo&Mel</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

</head>
<body>
<div class="login-container">

	<form class="login-form" action="login" method="post">
		<h2 class="login-header">Login</h2>
		<div class="input-container">
			<p style="flex:1;">User name:</p> <input placeholder="username" class="login-input" type="text" name="userName"/>
		</div>
		<br>
		<div class="input-container">
		    <p style="flex:1;">Password:</p> <input placeholder="password" class="login-input" type="text" name="userPassword"/>
		</div>
				<br>
	<input class="login-btn" type="submit" value="Login"/>
	<a class="register-btn" href="signIn">Register</a>
	
	</form>
</div>

</body>
</html>