<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"  %>
 <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
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
<body style="text-align:center">
	<form action="editStudent" method="post">
	<h3>Update Form</h3>
		<table border="1">
			<tr>
				<td><b>Opened for :</b></td> <td><i>Update</i></td>
			</tr>
			<tr>
				<td>Student Roll No. : </td> <td> <input type="text" name="student_rollno" value="${id}" readonly style="border : none;outline : none;cursor : pointer;font-weight: bold;"> </td>
			</tr>
			<tr>
				<td>Student First Name :</td> <td> <input type="text" name="student_fname" /> </td>
			</tr>
			<tr>
				<td>Student Last Name :</td> <td> <input type="text" name="student_lname" /> </td>
			</tr>
			<tr>
				<td>Student Email Id :</td> <td> <input type="text" name="student_email" /> </td>
			</tr>
			<tr>
				<td>Percentage :</td> <td> <input type="text" name="student_percentage" /> </td>
			</tr>
			<tr>
				<td><input type="submit" value="Update"></td> 
				<td><input type="reset" value="Reset"></td> 
			</tr>
		</table>
	</form>
</body>
</html>