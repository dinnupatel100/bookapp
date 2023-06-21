package com.admin.servlet;
import java.io.*;


import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.DAO.UserDAOImpl;
import com.DB.DBConnect;


@WebServlet("/approve")

public class Approve extends HttpServlet{

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			System.out.println("JE"+id);
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			boolean f = dao.approveuser(id);
			
			HttpSession session = req.getSession();
			
			
			resp.sendRedirect("admin/home.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
			
