<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>searching</title>
<style>
.container{
	width : 80%;
	margin : auto;
	margin-top : 100px;
	/* border : 1px solid red; */
}
#options{
	display : flex;
	justify-content : space-between;
	align-items : center;
}
button{
	font-weight : bold;
}
button:hover{
	font-weight : bold;
	box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
}
#options #search{
	display : flex;
	justify-content : space-around;
	align-items : center;
}
input{
	border-radius : 10px;
	margin-right : 5px;
}
#output{
	margin-top : 30px;
}
table{
	width : 100%;
	border : none;
}
</style>
</head>
<body>
	<div class="container">
		<div id="options">
			<div id="add">
				<a href="addStudent">
					<button><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><path d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32V224H48c-17.7 0-32 14.3-32 32s14.3 32 32 32H192V432c0 17.7 14.3 32 32 32s32-14.3 32-32V288H400c17.7 0 32-14.3 32-32s-14.3-32-32-32H256V80z"/></svg>
						Add
					</button>
				</a>
			</div>
			<div id="search">
				<div id="search-box">
					<input type="text" name="search" id="search"> 
				</div>
				<div id="search-icon">
					<svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/></svg>
				</div>
			</div>
		</div>
		<div id="output">
			<table border=1>
				<tr>
					<td><b>Roll No</b></td>
					<td><b>First Name</b></td>
					<td><b>Last Name</b></td>
					<td><b>Gender</b></td>
					<td><b>Email Id</b></td>
					<td><b>Percentage</b></td>
				</tr>
				<c:forEach var="st" items="${studentList}">
					<tr>
						<td>${st.STU_ROLLNO}</td>
						<td>${st.STU_FNAME}</td>
						<td>${st.STU_LNAME}</td>
						<td><%-- ${st.STU_GENDER} --%><%="null" %></td>
						<td>${st.STU_EMAIL}</td>
						<td>${st.STU_PERCENTAGE}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>