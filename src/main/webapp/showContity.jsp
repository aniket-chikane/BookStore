<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@page import="com.model.Books"%>
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
		<font color="WHITE" size="30"><u>Book Store</u></font>
	</h1>
	<p align="right">
		<font color="RED">Welcome, </font><%=Un%>
		<a href="index.jsp">Log Out?</a>
	</p>
	<%


int bookid=Integer.parseInt(request.getParameter("bookid")) ;
/* int bookID = Integer.parseInt(bookid);  */
SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
Session sess = sf.openSession();
sess.beginTransaction();
Books book = (Books)sess.get(Books.class, bookid);
String Bname =  book.getBname();
String Bauthor = book.getBauthor();
int Bid = book.getBid();
double Bprice = book.getBprice();
session.setAttribute("Bname", Bauthor);
session.setAttribute("Bauthor", Bname);
session.setAttribute("Bprice", Bprice);
session.setAttribute("Bid", Bid);


%>
	<center>
		<fieldset>
			<legend align="center">
				<font color="RED" size="35" face="PhyllisD">Book Details</font>
			</legend>
			<font color="GREEN" size="5">"<%=Bauthor%>"
			</font>
			<h4>
				by <font color="RED"><u><%=Bname%></u></font>
			</h4>
			Book price: <font color="BLUE"><%=Bprice%> INR</font>

			<form action="confirm.jsp">
				<h4>
					Quantity : <select name="count">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
				</h4>
				<input type="submit" value="Buy"><br>
				<br>
			</form>
			<form action="shoBook.jsp">
				<input type="submit" value="Cancel"><br>
				<br>
				<br>
				<br>
			</form>
		</fieldset>
	</center>

</body>
</html>