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

@WebServlet("/logout")

public class LogoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			HttpSession session = req.getSession();
			session.removeAttribute("userobj");
			
			HttpSession session2 = req.getSession();
			session2.setAttribute("succMsg","");
			resp.sendRedirect("index.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
			
