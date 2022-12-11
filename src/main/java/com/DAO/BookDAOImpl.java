package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDetails;

public class BookDAOImpl implements BookDAO {
  
	private Connection conn;
	
	
	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	public boolean addBooks(BookDetails b1) {
		boolean f=false; 
		try {
			String sql ="insert into book_details(bookName,author,price,bookCategory,status,photo,user_email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
	
			ps.setString(1,b1.getBookName());
			ps.setString(2,b1.getAuthorName());
			ps.setDouble(3,b1.getPrice());
			ps.setString(4,b1.getBookCategory());
			ps.setString(5,b1.getStatus());
			ps.setString(6,b1.getFileName());
			ps.setString(7,b1.getEmail());
			
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


	@Override
	public List<BookDetails> getAllBooks() {
		
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null; 
		try {
			
			String sql = "select * from book_details";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthorName(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setFileName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	@Override
	public BookDetails getBookById(int id) {
		
		BookDetails b = null;
		
		try {
			
			String sql ="select * from book_details where bookId = ?";
		    PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setInt(1, id);
		    ResultSet rs = ps.executeQuery();
		    while(rs.next()) {
		    	b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthorName(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setFileName(rs.getString(7));
				b.setEmail(rs.getString(8));
		    }
		    
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return b;
	}


	
	public boolean updateBooks(BookDetails b) {
		boolean f = false;
		try {
			
			String sql = "update book_details set bookName=?, author=?,price=?,bookCategory=?,status=? where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthorName());
			ps.setDouble(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setInt(6, b.getBookId());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	@Override
	public boolean deleteBooks(int id) {
		boolean f = false;
		try {
			String sql = "delete from book_details where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	
	public List<BookDetails> getfreeBooks() {
		
		List<BookDetails> list = new ArrayList<BookDetails>();
		List<BookDetails> list1 = new ArrayList<BookDetails>();
		BookDetails b =null;
		try {
			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"Active");
			ps.setString(2, "Free Books");
			ResultSet rs = ps.executeQuery();
			int i =1;
			while(rs.next() && i<=4) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthorName(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setFileName(rs.getString(7));
				b.setEmail(rs.getString(8));
				
				list.add(b);
				i++;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
        public List<BookDetails> getStoryBooks() {
		
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b =null;
		try {
			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"Active");
			ps.setString(2, "Story Books");
			ResultSet rs = ps.executeQuery();
			int i =1;
			while(rs.next() && i<=4) {
				b = new BookDetails();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthorName(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setFileName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
        public List<BookDetails> getPopularBooks() {
    		
    		List<BookDetails> list = new ArrayList<BookDetails>();
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "Popular Books");
    			ResultSet rs = ps.executeQuery();
    			int i =1;
    			while(rs.next() && i<=4) {
    				b = new BookDetails();
    				b.setBookId(rs.getInt(1));
    				b.setBookName(rs.getString(2));
    				b.setAuthorName(rs.getString(3));
    				b.setPrice(rs.getDouble(4));
    				b.setBookCategory(rs.getString(5));
    				b.setStatus(rs.getString(6));
    				b.setFileName(rs.getString(7));
    				b.setEmail(rs.getString(8));
    				list.add(b);
    				i++;
    			}
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    		return list;
    	}
	
        
        public List<BookDetails> getAllFreeBooks() {
    		
    		List<BookDetails> list = new ArrayList<BookDetails>();
    		
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "Free Books");
    			ResultSet rs = ps.executeQuery();
    		
    			while(rs.next()) {
    				b = new BookDetails();
    				b.setBookId(rs.getInt(1));
    				b.setBookName(rs.getString(2));
    				b.setAuthorName(rs.getString(3));
    				b.setPrice(rs.getDouble(4));
    				b.setBookCategory(rs.getString(5));
    				b.setStatus(rs.getString(6));
    				b.setFileName(rs.getString(7));
    				b.setEmail(rs.getString(8));
    				
    				list.add(b);
    				
    			}
    			
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    		return list;
    	}


		
		public List<BookDetails> getAllStoryBooks() {
			
			
			List<BookDetails> list = new ArrayList<BookDetails>();
			BookDetails b =null;
			try {
				String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1,"Active");
				ps.setString(2, "Story Books");
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					b = new BookDetails();
					b.setBookId(rs.getInt(1));
					b.setBookName(rs.getString(2));
					b.setAuthorName(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setFileName(rs.getString(7));
					b.setEmail(rs.getString(8));
					list.add(b);
					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}


		
		public List<BookDetails> getAllPopularBooks() {
			
			List<BookDetails> list = new ArrayList<BookDetails>();
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "Popular Books");
    			ResultSet rs = ps.executeQuery();
    		
    			while(rs.next()) {
    				b = new BookDetails();
    				b.setBookId(rs.getInt(1));
    				b.setBookName(rs.getString(2));
    				b.setAuthorName(rs.getString(3));
    				b.setPrice(rs.getDouble(4));
    				b.setBookCategory(rs.getString(5));
    				b.setStatus(rs.getString(6));
    				b.setFileName(rs.getString(7));
    				b.setEmail(rs.getString(8));
    				list.add(b);
    				
    			}
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    		return list;
		}
   
        
        
}
