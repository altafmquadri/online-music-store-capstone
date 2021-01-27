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

		<nav>Customer Registration</nav>
		<form method="post" >
			<div>
				<label>Username:</label> 
				<input type="text" name="name" required="required">
			</div>

			<div>
				<label>Password:</label> 
				<input type="password" name="password" required="required" >
			</div>
			
			<div>
				<label>Confirm Password:</label> 
				<input type="password" name="confirm" required="required">
			</div>
			
			<div>
				<label>Phone Number:</label> 
				<input type="text" name="phoneNumber" required="required">
			</div>
			
			<div>
				<label>Email ID:</label> 
				<input type="email" name="email" required="required">
			</div>
			
			<div>
				<label>Address:</label> 
				<input type="text" name="address" required="required">
			</div>
			
			<div>
				<input type="submit" value="Register">
			</div>
			
		</form>
		<div>
			<h3>${message}</h3>
		</div>
	</div>

</body>
</html>