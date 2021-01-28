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
	<div>
		<nav>
			<a href="/logout">Logout</a>
		</nav>
	</div>
		<h1> Add Mailing Address</h1>
		<form method="post" >
			<div>
				<label>Street:</label> 
				<input type="text" name="street" required="required">
			</div>

			<div>
				<label>City:</label> 
				<input type="text" name="city" required="required" >
			</div>
			
			<div>
				<label>State</label> 
				<input type="text" name="state" required="required">
			</div>
			
			<div>
				<label>Zip:</label> 
				<input type="text" name="zip" required="required">
			</div>			
			
			<div>
				<input type="submit" value="Save">
			</div>
			
		</form>
		
	</div>

</body>
</html>