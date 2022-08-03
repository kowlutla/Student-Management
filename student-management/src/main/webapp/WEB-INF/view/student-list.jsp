<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">
</head>
<body>

	<div class="container">

		<h1 class="heading">Student Management</h1>

		<div>
			<form action="addStudent">
				<input type="submit" value="ADD STUDENT" class="btn btn-outline-success">
			</form>
		</div>
		<br>
		<div>
			<table class="table table-bordered">

				<thead class="table-dark">
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
							class="btn btn-outline-primary" >Update</a> <a
							href="${pageContext.request.contextPath }/deleteStudent?id=${student.id}"
							onclick="if((!confirm('Are you sure want to delete student')))return false"
							class="btn btn-outline-danger">Delete</a></td>
					<tr>
				</c:forEach>
			</table>

			<!-- <img alt="fake students" src="/student-management/URLToReachResourcesFolder/images/students.jpg">
		 -->
		</div>
	</div>
</body>
</html>