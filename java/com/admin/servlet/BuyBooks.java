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

@WebServlet("/buybook")

public class BuyBooks extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String buyer_email = req.getParameter("buyer_email");
			String seller_email = req.getParameter("seller_email");
			int copies = Integer.parseInt(req.getParameter("copies"));
			int bid = Integer.parseInt(req.getParameter("bid"));
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			boolean f = dao.buybook(bid,buyer_email,seller_email,copies);
			
			HttpSession session = req.getSession();
			
			if(f) {
				
				resp.sendRedirect("cart.jsp?email="+buyer_email+"&copies="+copies);
			}
			else {
				session.setAttribute("failedMsg","Something went wrong");
				resp.sendRedirect("view_books.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
			