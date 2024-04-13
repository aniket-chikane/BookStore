<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
</head>
<body>
	<%
String name = (String) session.getAttribute("Uname");
String id = (String) session.getAttribute("Uid");
%>
	
	<p align="right">
		<font color="RED">Welcome, </font><%=name%>
		<a href="index.jsp">Log Out?</a>
	</p>
	<center>
		<fieldset>
			<br>
			<br>
			<br>
			<h2>
				<font color="RED">Welcome to<br> Online Shopping Cart
					for Book Store.
				</font>
			</h2>
			<h3>
				<font color="GREEN">Hear you can find what you want.</font>
			</h3>
			<h3>Click on "Show List" to buy some of them.</h3>
			<form action="shoBook.jsp" method="get">
				<input type="submit" value="Show List"><br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
			</form>
		</fieldset>
	</center>
</body>
</html>