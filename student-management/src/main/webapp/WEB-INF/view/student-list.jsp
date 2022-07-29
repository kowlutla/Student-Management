<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
</head>
<body bgcolor="Black" style="color: white">
	<h1 align="center">Student Management</h1>

	<div align="center">
		<table border="2">

			<thead>
				<tr>
					<td>Id</td>
					<td>Name</td>
					<td>Mobile</td>
					<td>Country</td>
				</tr>
			</thead>
			<c:forEach var="student" items="${students }">
				<tr>
					<td>${student.id }</td>
					<td>${student.name }</td>
					<td>${student.mobile }</td>
					<td>${student.country }</td>
				<tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>