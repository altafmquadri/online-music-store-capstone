<%@page import="com.capstone.model.Customer"%>
<%@page import="com.capstone.model.Song"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song Page</title>
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
			<nav>Cart <span>${cart.size()}</span></nav>
		</div>
	</div>
	<div>
		<h1>Songs</h1>
		<div>
			<form>
				<div>
					<label>Filter:</label> 
					<input type="text" name="keyword">
					<input type="submit" name="Search">
				</div>
			</form>
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
					List<Song> songs = (List<Song>) session.getAttribute("songs");
				%>
				<%
					for (Song s : songs) {
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
					<td><a href="/addtocart/<%=s.getId()%>">Add To Cart</a></td>
				</tr>
				<%
				}
				%>
			</table>
		</div>
	</div>
</body>
</html>