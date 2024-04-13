<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@page import="com.model.Books"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
</head>
<body>
	<h1 style="background-color: BLUE">
		<font color="WHITE" size="35">Book Store</font>
	</h1>
	<%
SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
Session sess = sf.openSession();
sess.beginTransaction();
Query q = sess.createQuery("from Books");
List<Books> books = q.list();	
String Un = (String) session.getAttribute("Uname");
%>
	<p align="right">
		<font color="RED">Welcome, </font><%=Un%>
		<a href="index.jsp">Log Out?</a>
	</p>

	<center>
		<fieldset>
			<legend align="center">
				<font color="RED" face="PhyllisD" size="20">Book list</font>
			</legend>
			<h3>Here are some of the popular java books list.</h3>
			<table border=1>
				<tr>
					<th>Book ID</th>
					<th>Book Name</th>
					<th>Book Author</th>
					<th>Book Price</th>
				</tr>
				<%
int bookid ;
for(Books book : books)
{
	bookid = book.getBid();
	%>
				</th>
				<td><%=book.getBid()%></td>
				<td><a href=showContity.jsp?bookid= <%=bookid%>><%=book.getBauthor()%></a></td>
				<td><%=book.getBname()%></td>
				<td><%=book.getBprice()%> INR</td>
				</tr>
				<%} %>
			</table>
			<br>
			<br>
			<br>
			<br>
			<br>
		</fieldset>
	</center>
	<%
sess.getTransaction().commit();
sess.close();
%>

</body>
</html>