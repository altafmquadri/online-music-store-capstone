<%@page import="com.capstone.model.Song"%>
<%@page import="java.util.List"%>
<%@page import="com.capstone.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Song Page</title>
</head>

<body>
	<%
		Admin admin = (Admin) session.getAttribute("admin");
		if (admin == null) {
			response.sendRedirect("/admin/login");
		}
	%>
	<div>
		<div>
			<nav>Welcome ${admin.getUsername()}</nav>
		</div>
		<div>
			<nav><a href="/admin/viewusers">All Customers</a></nav>
		</div>
		<div>
			<nav><a href="/admin/logout">Logout</a></nav>
		</div>
	</div>
	
	<div>
		<h1>Songs</h1>
		<div>
			<form method="post">
				<div>
					<label>Song Image</label> 
					<input type="text" name="imageUrl" required="required">
					<div>${message}</div>
				</div>
				<div>
					<label>Song Title</label> 
					<input type="text" name="title" required="required">
				</div>
				<div>
					<label>Song Description</label> 
					<input type="text" name="description" required="required">
				</div>
				<div>
					<label>Artist</label> 
					<input type="text" name="artist" required="required">
				</div>
				<div>
					<label>Genre</label>
					 <input type="text" name="genre" required="required">
				</div>
				<div>
					<label>Format</label> 
					<select required="required" name="format">
						<option value="AIFF">AIFF</option>
						<option value="MP3">MP3</option>
						<option value="MP4">MP4</option>
						<option value="OGG">OGG</option>
						<option value="WAV">WAV</option>
						<option value="WMA">WMA</option>
					</select>
				</div>
				<div>
					<label>Price</label> 
					<input type="text" pattern=^[0-9]{1,10}(\.[0-9]{1,2})?$ title="Number upto 10 digits and 2 decimal places" name="price" required="required">
				</div>
				<div>
					<input type='submit' value="Add Song" >
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
					<th colspan="2">Update</th>
				</tr>
				<%
					@SuppressWarnings("unchecked")
					List<Song> songs = (List<Song>) session.getAttribute("songs");
				%>
				<%
					for (Song s : songs) {
				%>
				<tr style="text-align: center">
					<td> <img style="width: 75px; height:75px" src="<%=s.getImageUrl()%>" alt="song image"/></td>
					<td><%=s.getTitle()%></td>
					<td><%=s.getDescription()%></td>
					<td><%=s.getArtist()%></td>
					<td><%=s.getGenre()%></td>
					<td><%=s.getFormat()%></td>
					<td><%=s.getPrice()%></td>
					<td><a href="/admin/songs/editsong/<%=s.getId()%>">Edit</a></td>
					<td><a href="/admin/songs/deletesong/<%=s.getId()%>">Delete</a></td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</div>
</body>
</html>