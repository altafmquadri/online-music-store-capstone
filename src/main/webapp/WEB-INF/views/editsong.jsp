<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello ${song.getTitle()} </h1>
	<div>
			<form method="post">
				<div>
					<label>Song Title</label> <input type="text" name="title" value="${song.getTitle()}">
				</div>
				<div>
					<label>Song Description</label> <input type="text"
						name="description" value="${song.getDescription()}">
				</div>
				<div>
					<label>Artist</label>
					 <input type="text" name="artist" value="${song.getArtist()}">
				</div>
				<div>
					<label>Genre</label>
					 <input type="text" name="genre" value="${song.getGenre()}">
				</div>
				<div>
					<label>Format</label>
					 <input type="text" name="format" value="${song.getFormat()}">
				</div>
				<div>
					<label>Price</label>
					 <input type="text" name="price" value="${song.getPrice()}">
				</div>
				<div>
					<input type='submit' value="Save">					
				</div>
				<div>
					<button>Cancel</button>					
				</div>
			</form>
		</div>
</body>
</html>