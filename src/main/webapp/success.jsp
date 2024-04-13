<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@page import="com.model.Purchase"%>
<%@page import="java.util.*"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book store</title>
</head>
<body>
	<%

String Uid = (String)session.getAttribute("Uid");
int Bid = (int) session.getAttribute("Bid");
String addr = request.getParameter("addr");
int num = Integer.parseInt( request.getParameter("quantity"));
int  uid = Integer.parseInt(Uid); 
Purchase pr = new Purchase();
pr.setUid(uid);
pr.setQuantity(num);
pr.setBid(Bid);
pr.setAddress(addr);
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
LocalDateTime now = LocalDateTime.now();
pr.setBPdate(dtf.format(now));
System.out.println(dtf.format(now));

SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
Session sess = sf.openSession();
sess.beginTransaction();
sess.save(pr);
sess.getTransaction().commit();
sess.close();

response.sendRedirect("finish.jsp");

%>
</body>
</html>