<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student list</title>
<script src="js/delete.js"></script>
<style>
body{
	background : url("https://media.tenor.com/z6oiSsc0S-oAAAAj/mg.gif");
	background-position : 50% 120%;
	background-repeat: no-repeat;
}
table{
	width : 100%;
	border-collapse: collapse; 
	border : 1px solid;
}
th, td {
  padding: 15px;
  text-align: left;
  border-bottom: 1px solid black;
}
tr:nth-child(even) {
	background-color: rgb(232, 155, 178);
}
tr:hover {
	background-color: cyan;
	/* zoom : 1.02; */
}
</style>
</head>
<body>
	<div style="width:80%;margin:auto;background-color: transparent">
		<h1>Student Data</h1>
		<a href="addStudent"><button>Add</button></a>
			<table border=1>
			<tr>
				<td><b>Roll No</b></td>
				<td><b>First Name</b></td>
				<td><b>Last Name</b></td>
				<td><b>Email Id</b></td>
				<td><b>Percentage</b></td>
				<td><b>Edit</b></td>
				<td><b>Delete</b></td>
			</tr>
			<c:forEach var="student" items="${studentList}">
				<tr>
					<td>${student.STU_ROLLNO}</td>
					<td>${student.STU_FNAME}</td>
					<td>${student.STU_LNAME}</td>
					<td>${student.STU_EMAIL}</td>
					<td>${student.STU_PERCENTAGE}</td>
					<td><a href="editStudent?student_rollno=${student.STU_ROLLNO}" id=""><button>edit</button></a></td>
					<!-- This is the code without validation -->
					<td>
						<a href="deleteStudent?student_rollno=${student.STU_ROLLNO}" id="delete"
							onclick="return confirm('Do you want to delete the record.')"
						>
							<button onclick="geekConfirm()">delete</button>
						</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script type="text/javascript">
		var n =  document.getElementById("stno").innerText;
		function deleteFun(n){
			console.log(n);
			var abb = document.getElementById("delete");
			if (confirm("Are sure want to delete!") == true) {
	      		 x = "OK!";
			} else {
				x = "Cancel!";
			}
			if(x == "OK!"){
				abb.href = "deleteStudent"+"?"+"student_rollno="+n;
				console.log("href : "+abb.href);
			}  
		}
	</script>
</body>
</html>