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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
			<table border='1' style="width: 40%">
				<tr>
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
				<tr style="text-align: center">					
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
</body>
</html>