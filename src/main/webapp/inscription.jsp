<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
int clubid = Integer.parseInt(request.getAttribute("clubid").toString());
%>
<head>
<meta charset="ISO-8859-1">
<title>Inscription club <%=clubid%></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div
		style="display: flex; flex-direction: column; align-items: center; justify-content: center; width: 100%; height: 100vh">
		<form method="POST" action="/controle/inscription" style="width: 50%">
			<div class="form-group">
				<label for="exampleInputEmail1">Club ID</label> <input
					name="club_id" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					value="<%=clubid%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">First Name</label> <input
					name="first_name" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter Your First Name">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Last Name</label> <input
					name="last_name" type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter Your Last Name">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>