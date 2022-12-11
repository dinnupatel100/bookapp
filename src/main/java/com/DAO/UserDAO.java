package com.DAO;

import com.entity.BookDetails;
import com.entity.User;

public interface UserDAO {
	public boolean userRegister(User us);
	
	public User login(String email,String password);
	
	public User getUserByEmail(String email);

}
