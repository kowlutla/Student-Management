<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
</head>
<body bgcolor="Black" style="color: white">
	<h1 align="center">Student Management</h1>

	<div align="center">
		<form:form action="saveStudent" modelAttribute="student" method="POST">

			<form action="">
				<label for="name">Name: </label>
				<form:input path="name" name="name" placaholder="name" />
				<br> <br> <label for="mobile">Mobile: </label>
				<form:input path="mobile" name="mobile" placaholder="mobile" />
				<br> <br> <label for="country">Country: </label>
				<form:input path="country" name="country" placaholder="country" />
				<br> <br> <input type="submit" value="Submit">

			</form>
		</form:form>
	</div>
</body>
</html>