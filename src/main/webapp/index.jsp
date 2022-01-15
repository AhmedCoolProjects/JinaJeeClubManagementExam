<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Club"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ESI CLUBS</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<%
	ArrayList<Club> listclub = new ArrayList<Club>();
	ArrayList<Integer> listclubsids = new ArrayList<Integer>();
	%>
	<%
	listclub = (ArrayList) request.getAttribute("listclub");
	listclubsids = (ArrayList) request.getAttribute("listclubsids");
	%>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Club ID</th>
				<th scope="col">Club Name</th>
				<th scope="col">President Name</th>
				<th scope="col">Date</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Club c : listclub) {
			%>
			<tr>
				<th scope="row"><%=c.getId()%></th>
				<td><%=c.getName()%></td>
				<td><%=c.getPresidentName()%></td>
				<td><%=c.getDate()%></td>
				<td>
					<%
					if (listclubsids.contains(c.getId())) {
					%> <a style="color: red"
					href="/controle/sedesabonner?clubId=<%=c.getId()%>"> Se
						desabonner </a> <%
 } else {
 %> <a style="color: blue"
					href="/controle/inscription?clubId=<%=c.getId()%>"> S'inscrire
				</a> <%
 }
 %>

				</td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>