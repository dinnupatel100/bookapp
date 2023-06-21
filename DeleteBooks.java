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

@WebServlet("/delete")

public class DeleteBooks extends HttpServlet{

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteBooks(id);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg","Book Deleted Successfully");
				resp.sendRedirect("sellerbooks.jsp");
			}
			else {
				session.setAttribute("failedMsg","Something went wrong");
				resp.sendRedirect("sellerbooks.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
			