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
			<nav> Hello, ${customer.getUsername()}</nav>
		</div>
		<div>
			<nav><a href="/songs">Home</a></nav>
		</div>
		<div>
			<nav><a href="/cart">Cart</a> <span>${cart.size()}</span></nav>
		</div>		
		<div>
			<nav><a href="/pastorders">Your Orders</a></nav>
		</div>		
		<div>
			<nav><a href="/logout">Logout</a></nav>
		</div>
	</div>
	<div>		
		<div>
		<h1>Your Order History</h1>
		<%
			@SuppressWarnings("unchecked")
			List<Order> orders = (List<Order>) session.getAttribute("orders");
			for(Order o : orders){		
		%>
			
			<table border='1' style="width: 40%;margin-bottom:25px">
				<tr>
					<th colspan="6">Order No: <span><%=o.getId()%></span> Date: <span><%=o.getDate().toString().substring(0,9)%></span> </th>					
				</tr>
				<tr>
					<th>Title</th>
					<th>Description</th>
					<th>Artist</th>
					<th>Genre</th>
					<th>Format</th>
					<th>Price</th>					
				</tr>		
		<%
			List<Item> items = (List<Item>) o.getItems();				
		%>
		<%
			for (Item i : items) {
		%>			
				<tr style="text-align: center">					
					<td><%=i.getTitle()%></td>
					<td><%=i.getDescription()%></td>
					<td><%=i.getArtist()%></td>
					<td><%=i.getGenre()%></td>
					<td><%=i.getFormat()%></td>
					<td><%=i.getPrice()%></td>						
				</tr>
					
				<%
				}}					
				%>
				
			</table>
		
		</div>
	</div>
</body>
</html>