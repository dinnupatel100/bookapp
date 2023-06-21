package com.user.servlet;
import java.io.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.Entity.BookDetails;
import com.Entity.User;
import com.user.servlet.File;
import com.user.servlet.part;

@WebServlet("/adhaar")
@MultipartConfig


public class aadhar extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
			Part part = req.getPart("img");
			String fileName = part.getSubmittedFileName();
			
            //User u1 = new User(fileName);
			
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			
			boolean f = dao.aadhar(fileName,email);
			//resp.sendRedirect("verification.jsp");
			HttpSession session = req.getSession();
			if(f) {
				
				String path = getServletContext().getRealPath("")+"book";
				File file= new File(path);
				
				part.write(path + File.separator + fileName);
				
				session.setAttribute("succMsg","Aadhar Added Successfully");
				resp.sendRedirect("verification.jsp");
			}
			else {
				session.setAttribute("failedMsg","Somenthing Wrong Server");
				resp.sendRedirect("sellerhome.jsp");
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
