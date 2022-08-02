<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
<link rel="stylesheet" type="text/css"
	href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">
</head>
<body>


	<marquee width="60%" direction="left" height="100px" scrollamount="10">
		<h1>Student Management</h1>
	</marquee>

	<div>
		<form action="addStudent">
			<input type="submit" value="ADD STUDENT" class="button">
		</form>
	</div>
	<br>
	<div align="center">
		<table border="2">

			<thead>
				<tr>
					<td>Id</td>
					<td>Name</td>
					<td>Mobile</td>
					<td>Country</td>
					<td>Action</td>
				</tr>
			</thead>
			<c:forEach var="student" items="${students }">
				<tr>
					<td>${student.id }</td>
					<td>${student.name }</td>
					<td>${student.mobile }</td>
					<td>${student.country }</td>
					<td><a
						href="${pageContext.request.contextPath }/updateStudent?id=${student.id}"
						class="action" id="update">Update</a> <a
						href="${pageContext.request.contextPath }/deleteStudent?id=${student.id}"
						onclick="if((!confirm('Are you sure want to delete student')))return false"
						class="action" id="delete">Delete</a></td>
				<tr>
			</c:forEach>
		</table>

		<!-- <img alt="fake students" src="/student-management/URLToReachResourcesFolder/images/students.jpg">
		 -->
	</div>
</body>
</html>