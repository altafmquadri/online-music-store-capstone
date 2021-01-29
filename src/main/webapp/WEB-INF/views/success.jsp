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
			<table border='1' style="width: 40%">
				<tr>
					<th colspan="6">Order Number:${orderid}</th>					
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
			Order order = (Order)session.getAttribute("order");
			List<Item> items = (List<Item>) order.getItems();				
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
				}
				%>
				<tr>
					<td colspan="5">Total</td>	
					<td>${total}</td>
				</tr>
				<tr>
					<th colspan="6">Mailing Address:</th>									
				</tr>	
				<tr>
					<th colspan="3">Street</th>
					<th colspan="1.5">City</th>
					<th colspan="1.5">State</th>
					<th colspan="1.5">Zipcode</th>
				</tr>	
				<tr style="text-align: center">
					<td colspan="3">${address.getStreet()}</td>
					<td colspan="1.5">${address.getCity()}</td>
					<td colspan="1.5">${address.getState()}</td>
					<td colspan="1.5">${address.getZip()}</td>				
				</tr>
			</table>
			<div>
				<a href="/songs">Continue Shopping</a> 
			</div>
		</div>
	</div>
</body>
</html>