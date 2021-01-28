<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<nav><a href="/login">Customer Login</a></nav>
	</div>
	<h1>Admin Login</h1>
	<div>
		<form method="post">
			<div>
				<label>Username:</label>
				 <input type="text" name="name">
			</div>

			<div>
				<label>Password:</label>
				 <input type="password" name="password">
			</div>
			<div>
				<input type="submit" value="Submit">
			</div>
		</form>
		<div>
			<h3>${message}</h3>
		</div>
	</div>
</body>
</html>