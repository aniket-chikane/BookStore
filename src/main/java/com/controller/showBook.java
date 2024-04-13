package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import com.model.Books;



public class showBook extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session sess = sf.openSession();
		sess.beginTransaction();
		Query q = sess.createQuery("from Books");
		List<Books> books = q.list();	
		
		out.println("<center>");
		out.println("<h3>Here are some of the popular java books list.</h3>");
		
		out.println("<table border = 1>");
		
		out.println("<tr>");
		out.println("<th>Book ID</th>");
		out.println("<th>Book Name</th>");
		out.println("<th>Book Author</th>");
		out.println("<th>Book Price</th>");
		out.println("</tr>");
		int bookid ;
		for(Books book : books)
		{
			bookid = book.getBid();
			out.println("</th>");
			out.println("<td>"+book.getBid()+"</td>");
			out.println("<td><a href = showContity.jsp?bookid="+bookid+">"+book.getBname()+"</a></td>");
			out.println("<td>"+book.getBauthor()+"</td>");
			out.println("<td>"+book.getBprice()+" INR</td>");
			out.println("</tr>");
		}
		out.println("</table");
		out.println("</center>");
		sess.getTransaction().commit();
		sess.close();
	}

}
