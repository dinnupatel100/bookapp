package com.DAO;

import java.sql.*;

import com.DB.DBConnect;
import com.entity.BookDetails;
import com.entity.User;


public class UserDAOImpl implements UserDAO {
	
	
    private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	 

	public  boolean userRegister(User us) {
		boolean f=false;
	
		try {
			
			String s = "INSERT INTO user_details(email,name,phno,password,state,district,city) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(s);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getName());
			ps.setString(3, us.getPhno());
			ps.setString(4, us.getPassword());
			ps.setString(5, us.getState());
		    ps.setString(6, us.getDistrict());
		    ps.setString(7, us.getCity());
		    
			int i = ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	@Override
	public User login(String email, String password) {
    User us =null;		
		try {
			
			String sql= "select * from user_details where email=? and password=?";
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				
				us = new User();
				us.setId(rs.getInt(1));
				us.setEmail(rs.getString(2));
				us.setName(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setState(rs.getString(6));
				us.setDistrict(rs.getString(7));
				us.setCity(rs.getString(8));
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return us;
	}
	
	
		public User getUserByEmail(String email) {
		
		User us = null;
		
		try {
			
			String sql ="select * from user_details where email =?";
		    PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1, email);
		    ResultSet rs = ps.executeQuery();
		    while(rs.next()) {
		    	us = new User();
		    	us.setId(rs.getInt(1));
				us.setEmail(rs.getString(2));
				us.setName(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setState(rs.getString(6));
				us.setDistrict(rs.getString(7));
				us.setCity(rs.getString(8));
		    }
		    
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return us;
	}
	
	

}
