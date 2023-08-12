<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${msg}</title>
</head>
<body style="text-align:center">
	<h1>${pageFor}</h1><br><br>
	<%@ include file="addedStudentDetails.jsp" %>
	<a href="gotomainhome" >Go to Main Home</a>
</body>
</html>