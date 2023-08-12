<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
table{
	width : 50%;
	margin : auto;
	border-collapse: collapse; 
	border : 1px solid;
}
th, td {
  padding: 15px;
  text-align: left;
  border-bottom: 1px solid black;
}
</style>
</head>
<body>
	<div style="width:80%;margin:auto">
		<table border="1">
			<tr>
				<td>Status :</td> <td>${msg}</td>
			</tr>
			<tr>
				<td>Student Roll No. : </td> <td>${formData.student_rollno}</td>
			</tr>
			<tr>
				<td>Student First Name :</td> <td>${formData.student_fname}</td>
			</tr>
			<tr>
				<td>Student Last Name :</td> <td>${formData.student_lname}</td>
			</tr>
			<tr>
				<td>Student Email Id :</td> <td>${formData.student_email}</td>
			</tr>
			<tr>
				<td>Percentage :</td> <td>${formData.student_percentage}</td>
			</tr>
		</table>
	</div>
</body>
</html>