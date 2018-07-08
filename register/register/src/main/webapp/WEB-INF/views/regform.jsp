<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
</head>
<style>
body{
height: 850px;
background:#ace0ff;
background: linear-gradient(to bottom right,#8080ff,#4db8ff,#ace0ff);
font-family: 'Montserrat';font-size: 22px;}
h1 {text-align: center;}
h2 {text-align: center;}
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
<h1>Welcome to the <br> <img src=<%=request.getContextPath() %>images/hwt.jpg width="145px" height="145px"> <br> register page</h1>
<br>
<h2>Please register bellow</h2>
<br>
	<br>
	<p>${alreadyexists}</p>
	<p>${uscheck }</p>	
	<br>
<form id="register" action="confirm" method="post">
		Input info<br>
		<label for="first">First Name</label> <input type="text"
			name="first" placeholder="First Name" required autofocus></input><br> 
		<label for="last">Last Name</label> <input type="text"
			name="last" placeholder="Last Name" required></input> <br> 
		<label for="address1">Address</label> <input type="text"
			name="address1" placeholder="Address" required></input><br> 
		<label for="address2">Address extended</label> <input type="text"
			name="address2" placeholder="Address ext"></input><br> 
		<label for="city">City</label> <input type ="text" name="city"
			placeholder="City" required></input><br> 
		<label for="state">State</label> <input type ="text" name="state"
			placeholder="State" required></input><br> 
		<label for="zip">Zip</label> <input type="text" name="zip"
			placeholder="Zip" required></input><br> 
		<label for="country">Country</label> <input type ="text" name="country"
			placeholder="Country" required="US"></input><br> 
			<input class="button button1" type="submit" value="Register"></input>
	</form>

</body>
</html>