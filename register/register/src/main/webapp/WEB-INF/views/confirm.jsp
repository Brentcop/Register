<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
</head>
<style>
body{
    height: 850px;
background:#ace0ff;
background: linear-gradient(to bottom right,#8080ff,#4db8ff,#ace0ff);
font-family: 'Montserrat';font-size: 22px;}
.button {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-family : inherit;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button1 {font-size: 12px;}
.button1 {border-radius: 8px;}
</style>
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