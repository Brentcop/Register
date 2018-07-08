<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
</head>
<body>
<h1>Welcome to the </h1> <h1> register page</h1>
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
			name="first" placeholder="First Name" required></input><br> 
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