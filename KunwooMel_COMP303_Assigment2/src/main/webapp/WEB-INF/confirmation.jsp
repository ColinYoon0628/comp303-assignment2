<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">

</head>
<body style="display: flex;flex-direction: column; align-items: center;align-content: center; margin-top: 8%;justify-content: center;">
	<h1>Payment Complete</h1>
	<h2>Thank you for your registration!</h2>
	<form class="navigate-form" action="navigatoToHome" method="post">
		<input class="navigate-btn" type="submit" value="Click to go to Home page!"/>
	</form>
</body>
</html>