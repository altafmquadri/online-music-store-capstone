<%@page import="com.capstone.model.Admin"%>
<%@page import="com.capstone.model.Song"%>
<%@page import="com.capstone.model.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.capstone.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<div class="container">
	<%
		Admin a = (Admin) session.getAttribute("admin");
	if (a == null) {
		response.sendRedirect("/login");
	}
	%>


	<div>
		<div>
			<h3>Welcome ${admin.getUsername()}</h3>
		</div>

		<div>
			<nav>
				<a href="/admin/songs">Inventory</a>
			</nav>
		</div>
		<div>
			<nav>
				<a href="/logout">Logout</a>
			</nav>
		</div>
	</div>
	<div>
		<h1>Registered Users</h1>
		
		<div>
			<table class="table table-light table-striped table-bordered table-sm" border='1' style="width: 100%;text-align:center;">
				<tr class="table-dark">
					<th>Username:</th>
					<th>Phone Number:</th>
					<th>Email</th>
					<th>Address</th>					
				</tr>

				<%
					@SuppressWarnings("unchecked")
					List<Customer> users = (List<Customer>) session.getAttribute("users");
				%>
				<%
					for (Customer u : users) {
				%>
				<tr class="table align-middle" style="text-align: center">					
					<td><%=u.getUsername()%></td>
					<td><%=u.getPhoneNumber()%></td>
					<td><%=u.getEmail()%></td>
					<td><%=u.getAddress()%></td>					
				</tr>
				<%
					}
				%>
			</table>			
		</div>

	</div>
	</div>
</body>
</html>