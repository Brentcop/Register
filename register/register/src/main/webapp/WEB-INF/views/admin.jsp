<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<style>
body{
    height: 850px;
background:#ace0ff;
background: linear-gradient(to bottom right,#8080ff,#4db8ff,#ace0ff);
font-family: 'Montserrat';font-size: 22px;}
</style>
<body>
<h1>This is a list of all registered users</h1>
<table border="1">
             <tr>
                <th>First Name</th>
                <th>Last Name</th>  
                <th>Address 1</th>
                <th>Address 2</th>
                <th>City</th>
                <th>State</th>
                <th>Zip</th>
                <th>Country</th>
                <th>Date</th>  
             </tr>
             <tbody>
                <c:forEach items="${users}" var="users">
                    <tr>
                        <td>${users.first}</td>
                        <td>${users.last}</td>
                        <td>${users.address1}</td>
                        <td>${users.address2}</td>
                        <td>${users.city}</td>
                        <td>${users.state}</td>
                        <td>${users.zip}</td>
                        <td>${users.country}</td>
                        <td>${users.date}</td>
                    </tr>
                 </c:forEach>
              </tbody>            
            </table>

</body>
</html>