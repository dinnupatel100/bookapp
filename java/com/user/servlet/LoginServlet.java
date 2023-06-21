package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.Entity.User;
import com.admin.servlet.AddBooks;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			HttpSession session = req.getSession();
			HttpSession session2 = req.getSession();
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			String username = req.getParameter("user");
		    String mail=email;
		    session2.setAttribute("email",mail);
		    
		    
		    
			if("admin@gmail.com".equals(email) && "admin123".equals(password) && "Admin".equals(username))
			{
				
				User us = new User();
				us.setName("Admin");
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/home.jsp");
			
			}
			else {
				User us = new User();
				us =  dao.login(email, password);
				if(us!=null) {
				   if("Buyer".equals(username))
				   {
					session.setAttribute("userobj", us);
					resp.sendRedirect("index.jsp");
				   }
				   else if("Seller".equals(username)) {
					   session.setAttribute("userobj", us);
					   resp.sendRedirect("sellerhome.jsp");
				   }
				   else {
					   session.setAttribute("userobj", us);
					   resp.sendRedirect("login.jsp");
				   }
				}
				else {
					System.out.println("Failed");
					session.setAttribute("failedMsg","Incorrect Details");
					resp.sendRedirect("login.jsp");
					
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	
	}

}
