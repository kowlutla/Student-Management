<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">
<title>Student Management</title>
</head>
<body>

	<div class="container">
		<h1 class="heading">Student Management</h1>

		<div>
			<form:form action="saveStudent" modelAttribute="student"
				method="POST">

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
				<input type="submit" value="Submit" class="btn btn-primary">

			</form:form>
		</div>
	</div>
</body>
</html>