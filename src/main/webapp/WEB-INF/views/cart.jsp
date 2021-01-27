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
		Customer c = (Customer) session.getAttribute("customer");
		if (c == null) {
			response.sendRedirect("/login");
		}
	%>

	<a href="/logout">Logout</a>
	
	<div>
		<div>
			<nav>Welcome ${customer.getId()}</nav>
		</div>
		<div>
			<nav><a href="#">Proceed to Checkout</a></nav>
		</div>
		
		
	</div>
	<div>
		<h1>Cart</h1>
		<div>
			<a href="/songs">Continue Shopping</a> 
		</div>
		<div>
			<a href="/clearcart">Clear Cart</a>
		</div>
		<div>
		</div>
		<div>
			<table border='1' style="width: 40%">
				<tr>
					<th>Image</th>
					<th>Title</th>
					<th>Description</th>
					<th>Artist</th>
					<th>Genre</th>
					<th>Format</th>
					<th>Price</th>
					<th colspan="2">Purchase</th>
				</tr>

				<%
					@SuppressWarnings("unchecked")
					List<Song> songCart = (List<Song>) session.getAttribute("cart");
				%>
				<%
					for (Song s : songCart) {
				%>
				<tr style="text-align: center">
					<td><img style="width: 75px; height: 75px"
						src="<%=s.getImageUrl()%>" alt="song image" /></td>
					<td><%=s.getTitle()%></td>
					<td><%=s.getDescription()%></td>
					<td><%=s.getArtist()%></td>
					<td><%=s.getGenre()%></td>
					<td><%=s.getFormat()%></td>
					<td><%=s.getPrice()%></td>
					<td><a href="/removeitem/<%=s.getId()%>">Remove item</a></td>
				</tr>
				<%
				}
				%>
			</table>
		</div>
		
	</div>
</body>
</html>