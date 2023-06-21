package com.DAO;

import java.util.List;

import com.Entity.BookDetails;
import com.Entity.User;

public interface UserDAO {
	public boolean userRegister(User us);
	
	public User login(String email,String password);
	
	public User getUserByEmail(String email);
	
	public boolean checkUser(String email);

	public boolean aadhar(String aadhar,String email);
	
	public List<User> approve();
	
	public List<User> approveaadhar(int uid);
	
	public boolean approveuser(int uid);
	
	public int getUserReportCount();
	
	public int getUserReportSeller();
}
