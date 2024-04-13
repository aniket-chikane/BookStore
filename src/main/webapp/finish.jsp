<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book store</title>
</head>
<body>
	<%
String Un = (String) session.getAttribute("Uname");
%>
	<h1 style="background-color: BLUE">
		<font color="WHITE" size="35">Book Store</font>
	</h1>
	<p align="right">
		<font color="RED">Welcome, </font><%=Un%>
		<a href="index.jsp">Log Out?</a>
	</p>
	<fieldset>
		<center>
			<h3>
				<font color="GREEN">Your Order has been Confirmed...</font>
			</h3>
			<h4>The Book will be delivered within 2 days.</h4>
			<h4>Thank you for Online Book Shopping...</h4>
			<a href="shoBook.jsp">More Books?</a>
		</center>
	</fieldset>
</body>
</html>