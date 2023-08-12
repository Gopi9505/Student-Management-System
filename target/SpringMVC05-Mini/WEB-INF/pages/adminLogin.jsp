<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
<style>
body{
	background : url("https://media.tenor.com/z6oiSsc0S-oAAAAj/mg.gif");
	background-position : center 280px;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<div style="width:30%;margin:auto;">
		<h2>Admin Login</h2>
		<form action="login" method="post">
			<table>
				<tr>
					<td>username :</td>
					<td><input type="text" name="" value="admin"></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="" value="admin"></td>
				</tr>
				<tr>
					<td><input type="submit" name="login" value="Login"></td>
					<td><input type="reset" value="Reset"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>