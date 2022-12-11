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
import com.entity.BookDetails;
import com.user.servlet.File;
import com.user.servlet.part;

@WebServlet("/add_books")
@MultipartConfig
public class AddBooks extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String authorName = req.getParameter("aname");
			Double price = Double.parseDouble(req.getParameter("price"));
			String bookCategory = req.getParameter("btype");
			String status = req.getParameter("status");
			Part part = req.getPart("img");
			String fileName = part.getSubmittedFileName();
			
			BookDetails b1 = new BookDetails(bookName,authorName,price,bookCategory,status,fileName,"admin@gmail.com");
			
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			
			boolean f = dao.addBooks(b1);
			HttpSession session = req.getSession();
			if(f) {
				String path = getServletContext().getRealPath("")+"book";
				File file= new File(path);
				
				part.write(path + File.separator + fileName);
				
				session.setAttribute("succMsg","Book Added Successfully");
				resp.sendRedirect("admin/addbooks.jsp");
			}
			else {
				session.setAttribute("failedMsg","Somenthing Wrong On Server");
				resp.sendRedirect("admin/addbooks.jsp");
			}
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
//		super.doPost(req, resp);
	}

	
}
