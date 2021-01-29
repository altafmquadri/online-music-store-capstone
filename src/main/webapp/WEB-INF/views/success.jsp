<%@page import="com.capstone.model.Order"%>
<%@page import="com.capstone.model.Item"%>
<%@page import="com.capstone.model.Customer"%>
<%@page import="com.capstone.model.Song"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Order Confirmation</title>
</head>
<body>
	<%
		Customer c = (Customer) session.getAttribute("customer");
		if (c == null) {
			response.sendRedirect("/login");
		}
	%>
	<div>
		<div>
			<nav>Welcome ${customer.getUsername()}</nav>
		</div>
		<div>
			<nav><a href="/songs">Home</a></nav>
		</div>
		<div>
			<nav><a href="/cart">Cart</a> <span>${cart.size()}</span></nav>
		</div>
		<div>
			<nav><a href="/logout">Logout</a></nav>
		</div>
	</div>
	<div>
		<div>
			<table border='1' style="width: 40%">
				<tr><th colspan="6">Order Number:</th></tr>
				<tr>
					<th>Title</th>
					<th>Description</th>
					<th>Artist</th>
					<th>Genre</th>
					<th>Format</th>
					<th>Price</th>
					<th colspan="6">Your Total:</th>
				</tr>

				<%
					Order order = (Order)session.getAttribute("order");
					List<Item> items = (List<Item>) order.getItems();
				
				%>
				<%
					for (Item i : items) {
				%>
				
				<tr style="text-align: center">
					<td><%=i.getId()%></td>
					<td><%=i.getTitle()%></td>
					<td><%=i.getDescription()%></td>
					<td><%=i.getArtist()%></td>
					<td><%=i.getGenre()%></td>
					<td><%=i.getFormat()%></td>
					<td><%=i.getPrice()%></td>
					<td>${total}</td>	
				</tr>
				<%
				}
				%>
			</table>
		</div>
	</div>
</body>
</html>