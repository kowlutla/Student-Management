<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="/student-management/URLToReachResourcesFolder/css/add-student.css">
<link rel="stylesheet" type="text/css"
	href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">
<title>Student Management</title>
</head>
<body>
	<marquee width="60%" direction="left" height="100px" scrollamount="12"> 
		<h1>Student Management</h1>
	</marquee>

	<div>
		<form:form action="saveStudent" modelAttribute="student" method="POST">

			<form:hidden path="id" />

			<label for="name">Name: </label>
			<form:input path="name" name="name" placaholder="name" />
			<br>
			<br>
			<label for="mobile">Mobile: </label>
			<form:input path="mobile" name="mobile" placaholder="mobile" />
			<br>
			<br>
			<label for="country">Country: </label>
			<form:input path="country" name="country" placaholder="country" />
			<br>
			<br>
			<input type="submit" value="Submit" class="button">

		</form:form>
	</div>
</body>
</html>