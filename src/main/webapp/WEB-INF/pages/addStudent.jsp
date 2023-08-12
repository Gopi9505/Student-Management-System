<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div style="width:30%;margin:auto;">
		<h2>Add Student Details</h2>
		<form action="addStudent" method="post">
			<table>
				<tr>
					<td>Student Roll Number :</td>
					<td><input type="text" name="student_rollno" value="0"></td>
				</tr>
				<tr>
					<td>Student First Name :</td>
					<td><input type="text" id="fname" name="student_fname" value="Nobita"></td>
				</tr>
				<tr>
					<td>Student Last Name :</td>
					<td><input type="text" name="student_lname" value="N"></td>
				</tr>
				<tr>
					<td>Student Email Id :</td>
					<td><input type="text" name="student_email" value="n@gmail.com"></td>
				</tr>
				<tr>
					<td>Student Percentage :</td>
					<td><input type="text" name="student_percentage" value="90.5"></td>
				</tr>
				<tr>
					<td><input type="submit" name="addStudent" value="Add"></td>
					<td><input type="reset" value="Reset"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>