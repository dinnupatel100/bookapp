package com.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.DB.DBConnect;
import com.Entity.BookDetails;
import com.Entity.User;


public class UserDAOImpl implements UserDAO {
	
	
    private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	 

	public  boolean userRegister(User us) {
		boolean f=false;
	
		try {
			
			String s = "INSERT INTO user_details(email,name,phno,password,state,district,city,type) VALUES(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(s);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getName());
			ps.setString(3, us.getPhno());
			ps.setString(4, us.getPassword());
			ps.setString(5, us.getState());
		    ps.setString(6, us.getDistrict());
		    ps.setString(7, us.getCity());
		    ps.setString(8,us.getType());
		    
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
				us.setType(rs.getString(9));
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


		@Override
		public boolean checkUser(String email) {
			
			boolean f = true;
			try {
				String sql = "select * from user_details where email=?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					f=false;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return f;
		}


		
		public boolean aadhar(String aadhar,String email) {
			boolean f=false; 
			try {
				String sql ="update user_details set aadhar=? where email=?";
				PreparedStatement ps = conn.prepareStatement(sql);
		
				
				ps.setString(1,aadhar);
				ps.setString(2, email);
				
				
				int i = ps.executeUpdate();
				if(i==1)
				{ 
					f=true;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return f ;
		}
		
	   
		
	
	   public List<User> approve() {
			
			List<User> list = new ArrayList<User>();
		    User us = null; 
			try {
				
				String sql = "select * from user_details where type='buyer' and aadhar!='null'";
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					us = new User();
					us.setId(rs.getInt(1));
					us.setEmail(rs.getString(2));
					us.setName(rs.getString(3));
					us.setPhno(rs.getString(4));
					us.setAadhar(rs.getString(10));
					list.add(us);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}

			return list;
		}
	   
	   
	   public List<User> approveaadhar(int uid) {
			
			List<User> list = new ArrayList<User>();
		    User us = null; 
			try {
				
				String sql = "select * from user_details where id=uid";
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					us = new User();
					us.setId(rs.getInt(1));
					us.setEmail(rs.getString(2));
					us.setName(rs.getString(3));
					us.setPhno(rs.getString(4));
					us.setAadhar(rs.getString(10));
					list.add(us);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}

			return list;
		}
	   
	   public boolean approveuser(int uid) {
			boolean f=false; 
			try {
				String sql ="update user_details set type='seller' where id=?";
				PreparedStatement ps = conn.prepareStatement(sql);
		
				ps.setInt(1,uid);
				
				
				
				int i = ps.executeUpdate();
				if(i==1)
				{ 
					f=true;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return f ;
		}
		
	   public boolean rejectuser(int uid) {
			boolean f=false; 
			try {
				String sql ="update user_details set aadhar='null' where id=?";
				PreparedStatement ps = conn.prepareStatement(sql);
		
				ps.setInt(1,uid);
				
				
				
				int i = ps.executeUpdate();
				if(i==1)
				{ 
					f=true;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return f ;
		}
	   
	   
	   public int getUserReportCount() {
			
			
			int count =0 ;
			try {
				
				
				String sql ="select * from user_details";
			    PreparedStatement ps = conn.prepareStatement(sql);
			    ResultSet rs = ps.executeQuery();
			    while(rs.next()) {
			    	count++;
			    }
			    
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return count;
		}
	   
	   
	   public int getUserReportSeller() {
			
			
			int count =0 ;
			try {
				
				
				String sql ="select * from user_details where type='seller'";
			    PreparedStatement ps = conn.prepareStatement(sql);
			    ResultSet rs = ps.executeQuery();
			    while(rs.next()) {
			    	count++;
			    }
			    
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return count;
		}

}
