package com.admin.servlet;
import java.io.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.Entity.BookDetails;

@WebServlet("/edit_books")

public class EditBooks extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
		    int id = Integer.parseInt(req.getParameter("id"));
		    String email = req.getParameter("email");
			String bookName = req.getParameter("bname");
			String authorName = req.getParameter("aname");
			Double price = Double.parseDouble(req.getParameter("price"));
			String bookCategory = req.getParameter("btype");
			String status = req.getParameter("status");
			
			BookDetails b = new BookDetails();
			b.setBookId(id);
			b.setBookName(bookName);
			b.setAuthorName(authorName);
			b.setPrice(price);
			b.setBookCategory(bookCategory);
			b.setStatus(status);
			
			
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			boolean f = dao.updateBooks(b);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg","Book Updated Successfully");
				resp.sendRedirect("sellerbooks.jsp?email="+email);
			}
			else {
				session.setAttribute("failedMsg","Something went wrong");
				resp.sendRedirect("sellerbooks.jsp");
			}
			

			
		}catch(Exception e) {
			
		     e.printStackTrace();
		}
}		
}