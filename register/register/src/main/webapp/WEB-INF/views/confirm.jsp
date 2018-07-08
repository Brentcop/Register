<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
</head>
<body>
	<h1>Registration Completed</h1>

	<h2>${confirmed }</h2>

	<h3>The fields entered were:</h3>
	<h2>
		Last Name: ${last }<br> 
		Address: ${address1 } ${address2 }<br>
		City: ${city }<br> 
		State: ${state }<br> 
		Zip: ${zip }<br>
		Country: ${country }<br>
	</h2>
	<form id="register" action="">
		<input class="button button1" type="submit" value="Register"></input>
	</form>
</body>
</html>