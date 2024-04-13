<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
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
	<%
String Uid = (String) session.getAttribute("Uid");
int count =Integer.parseInt(request.getParameter("count")) ;
String Bname = (String) session.getAttribute("Bname");
String Bauthor = (String) session.getAttribute("Bauthor");
double Bprice = (double)session.getAttribute("Bprice") ;
int Bid = (int) session.getAttribute("Bid");
int pr = (int) Bprice;
int total =count * pr; 
%>

	<center>
		<p style="background-color: YELLOW">
			<font color="WHITE" size="12">Purchase Details</font>
		</p>
		<fieldset>
			<legend align="center">
				<h3>
					<font color="BLUE">Books Details</font>
				</h3>
			</legend>
			<br>
			<table border="1">
				<tr>
					<th>Book Id</th>
					<th>Book Name</th>
					<th>Book Author</th>
					<th>Book Price</th>
					<th>Quantity</th>
				</tr>
				<tr>
					<td><%=Bid%></td>
					<td><%=Bname%></td>
					<td><%=Bauthor%></td>
					<td><%=Bprice%></td>
					<td><%=count%></td>
				</tr>
			</table>
			<br>
			<br>
		</fieldset>
		<fieldset>
			<legend align="center">
				<h3>
					<font color="BLUE">User Details</font>
				</h3>
			</legend>
			<form action="success.jsp" method="post">

				<%-- User Id   :<font color = "GREEN"><%=Uid%></font><br><br>
User Name :<font color = "GREEN"> <%=Un%><br><br></font>
Enter Name : <input type = "text" name = "n"><br><br>
Enter Billing address : <input type = "textarea" rows = "4" cols = "50" name ="addr" placeholder ="Complete Address Hear." required><br><br>
Total Bill Amount :<%=count%> * <%=Bprice%> = <font color = "RED"><%=total %> INR.</font><br><br> --%>

				<table>
					<tr>
						<td>User Id :</td>
						<td><font color="GREEN"><%=Uid%></font></td>
					</tr>
					<tr>
						<td>User Name :</td>
						<td><font color="GREEN"> <%=Un%></font></td>
					</tr>
					<tr>
						<td>Enter Name :</td>
						<td><input type="text" name="n" placeholder="Enter name."
							required></td>
					</tr>
					<tr>
						<td>Enter Billing address :</td>
						<td><input type="textarea" rows="4" cols="50" name="addr"
							placeholder="Complete Address Here." required></td>
					</tr>
					<tr>
						<td>Total Bill Amount :<%=count%> * <%=Bprice%> =
						</td>
						<td><font color="RED"><%=total %> INR.</font></td>
					</tr>
				</table>
				<input type="submit" value="Purchase"><br>
			</form>
			<form action="shoBook.jsp">
				<br>
				<input type="submit" value="Cancel">
			</form>
		</fieldset>
	</center>

</body>
</html>