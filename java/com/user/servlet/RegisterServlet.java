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

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
			String name = req.getParameter("fname");
			String phno  = req.getParameter("phno");
			String password = req.getParameter("password");
			String state = req.getParameter("state");
			String district = req.getParameter("district");
			String city = req.getParameter("city");
			String type = req.getParameter("type");
			User us = new User(email,name,phno,password,state,district,city,type);
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			
		    
			HttpSession session = req.getSession();
			
			boolean f2 = dao.checkUser(email);
			if(f2){
				boolean f = dao.userRegister(us);
			
				if(f) {
					session.setAttribute("succMsg","Registration Successful");
					resp.sendRedirect("login.jsp");
				}
				else {
					session.setAttribute("failedMsg","Somenthing Wrong On Server");
					resp.sendRedirect("register.jsp");
				}
			}else {
				session.setAttribute("failedMsg","User Already Exists with this email id");
				resp.sendRedirect("register.jsp");
			}		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}