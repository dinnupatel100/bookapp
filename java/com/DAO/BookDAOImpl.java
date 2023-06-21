package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Entity.BookDetails;

public class BookDAOImpl implements BookDAO {
  
	private Connection conn;
	
	
	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	public boolean addBooks(BookDetails b1) {
		boolean f=false; 
		try {
			String sql ="insert into book_details(bookName,author,price,publication,edition,copies,bookCategory,status,photo,user_email) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
	
			ps.setString(1,b1.getBookName());
			ps.setString(2,b1.getAuthorName());
			ps.setDouble(3,b1.getPrice());
			ps.setString(4,b1.getPublication());
			ps.setString(5,b1.getEdition());
			ps.setInt(6,b1.getCopies());
			ps.setString(7,b1.getBookCategory());
			ps.setString(8,b1.getStatus());
			ps.setString(9,b1.getFileName());
			ps.setString(10,b1.getEmail());
			
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

	
public List<BookDetails> getSellerAllBooks(String email) {
		
		List<BookDetails> list = new ArrayList<BookDetails>();
		BookDetails b = null; 
		try {
			
			String sql = "select * from book_details where user_email = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
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
				b.setPublication(rs.getString(9));
				b.setEdition(rs.getString(10));
				b.setCopies(rs.getInt(11));
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


	
	public List<BookDetails> getJeeBooks() {
		
		List<BookDetails> list = new ArrayList<BookDetails>();
		List<BookDetails> list1 = new ArrayList<BookDetails>();
		BookDetails b =null;
		try {
			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"Active");
			ps.setString(2, "JEE Books");
			ResultSet rs = ps.executeQuery();
			int i =1;
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
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
        
	
        public List<BookDetails> getNeetBooks() {
    		
    		List<BookDetails> list = new ArrayList<BookDetails>();
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "NEET Books");
    			ResultSet rs = ps.executeQuery();
    			int i =1;
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
    				b.setCopies(rs.getInt(11));
    				list.add(b);
    				i++;
    			}
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    		return list;
    	}
        
        
        	public List<BookDetails> getSscBooks() {
    		
    		List<BookDetails> list = new ArrayList<BookDetails>();
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "SSC Books");
    			ResultSet rs = ps.executeQuery();
    			int i =1;
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
    				i++;
    			}
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    		return list;
    	}
	
        	
        	public List<BookDetails> getProgBooks() {
        		
        		List<BookDetails> list = new ArrayList<BookDetails>();
        		BookDetails b =null;
        		try {
        			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
        			PreparedStatement ps = conn.prepareStatement(sql);
        			ps.setString(1,"Active");
        			ps.setString(2, "Programming Books");
        			ResultSet rs = ps.executeQuery();
        			int i =1;
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
        				i++;
        			}
        		}catch(Exception e) {
        			e.printStackTrace();
        		}
        		return list;
        	}
        
        public List<BookDetails> getAllJeeBooks() {
    		
    		List<BookDetails> list = new ArrayList<BookDetails>();
    		
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "JEE Books");
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


		
		public List<BookDetails> getAllNeetBooks() {
			
			List<BookDetails> list = new ArrayList<BookDetails>();
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "NEET Books");
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
		
		
		public List<BookDetails> getAllSscBooks() {
			
			List<BookDetails> list = new ArrayList<BookDetails>();
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "SSC Books");
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
   
		
public List<BookDetails> getAllProgBooks() {
			
			List<BookDetails> list = new ArrayList<BookDetails>();
    		BookDetails b =null;
    		try {
    			String sql = "select * from book_details where status=? and bookCategory=? order by bookId DESC ";
    			PreparedStatement ps = conn.prepareStatement(sql);
    			ps.setString(1,"Active");
    			ps.setString(2, "Programming Books");
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
		
		
		public List<BookDetails> getSearchBooks(String ch)
			{
				
				List<BookDetails> list = new ArrayList<BookDetails>();
	    		BookDetails b =null;
	    		try {
	    			if(ch=="") {
	    				System.out.println("CH is Null");
	    				return list;
	    			}
	    			String sql1 = "select email from user_details where city like ?";
	    			PreparedStatement ps1 = conn.prepareStatement(sql1);
	    			ps1.setString(1,"%"+ch+"%");
	    			ResultSet rs1 = ps1.executeQuery();
	    			String email="";
	    			int i =1;
	    			do {
	    				
	    			    System.out.println(i);
	    			    if(i!=1) {
	    				 email = rs1.getString(1);
	    				 System.out.println(email);
	    			    }
	    			
	    			
	    			String sql = "select * from book_details where bookName like ? or author like ? or bookCategory like ? or user_email like ? and status=? ";
	    			PreparedStatement ps = conn.prepareStatement(sql);
	    			ps.setString(1,"%"+ch+"%");
	    			ps.setString(2,"%"+ch+"%");
	    			ps.setString(3,"%"+ch+"%");
	    			ps.setString(4,email);
	    			ps.setString(5,"Active");
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
	    				
	    			}i++;
	    			}while(rs1.next());
	    		}catch(Exception e) {
	    			e.printStackTrace();
	    		}
	    		return list;
			}
			
		
		public List<BookDetails> getcartBooks(String email) {
			
			List<BookDetails> list = new ArrayList<BookDetails>();
			BookDetails b = null; 
			try {
				

				String sql = "select * from cart join book_details on cart.bookId = book_details.bookId and buyer_email=?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					b = new BookDetails();
					
					b.setBookName(rs.getString(7));
					b.setAuthorName(rs.getString(3));
					b.setPrice(rs.getDouble(9));
					b.setBookCategory(rs.getString(5));
					b.setStatus(rs.getString(6));
					b.setFileName(rs.getString(12));
					b.setEmail(rs.getString(3));
					b.setCopies(rs.getInt(5));
					list.add(b);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}
			
			public List<BookDetails> getorderBooks(String email) {
				
				List<BookDetails> list = new ArrayList<BookDetails>();
				BookDetails b = null; 
				try {
					

					String sql = "select * from cart join book_details on cart.bookId = book_details.bookId and seller_email=?";
					PreparedStatement ps = conn.prepareStatement(sql);
					ps.setString(1, email);
					ResultSet rs = ps.executeQuery();
					while(rs.next())
					{
						b = new BookDetails();
						
						b.setBookName(rs.getString(7));
						b.setAuthorName(rs.getString(3));
						b.setPrice(rs.getDouble(9));
						b.setBookCategory(rs.getString(5));
						b.setStatus(rs.getString(6));
						b.setFileName(rs.getString(12));
						b.setEmail(rs.getString(2));
						b.setCopies(rs.getInt(5));
						list.add(b);
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}
			
			return list;
		}

		public boolean buybook(int bid,String buyer_email,String seller_email,int copies) {
			boolean f = false;
			try {
				int total=0;
				int current=0;
				String sql1 = "select copies from book_details where bookId=?";
				PreparedStatement ps1 = conn.prepareStatement(sql1);
				ps1.setInt(1,bid);
				ResultSet rs = ps1.executeQuery();
				if(rs.next()) {
					total = rs.getInt(1);
					current = total-copies;
					System.out.println(total);
					System.out.println(current);
				}
				
				String sql2 = "update book_details set copies=? where bookId=?";
				PreparedStatement ps2 = conn.prepareStatement(sql2);
				ps2.setInt(1, current);
				ps2.setInt(2, bid);
				int j = ps2.executeUpdate();
				
				String sql = "insert into cart(buyer_email,seller_email,bookId,no_of_copies) values(?,?,?,?)";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(3, bid);
				ps.setString(1,buyer_email);
				ps.setString(2,seller_email);
				ps.setInt(4,copies);
				
				int i = ps.executeUpdate();
				if(i==1) {
					f = true;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return f;
		}
		
		
		public List<BookDetails> getbookreport(String category){
			
			List<BookDetails> list = new ArrayList<BookDetails>();
			BookDetails b = null; 
			try {
				

				String sql = "select * from book_details where bookCategory=?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, category);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					b = new BookDetails();
					
					b.setBookName(rs.getString(2));
					b.setAuthorName(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setBookCategory(rs.getString(5));
					b.setFileName(rs.getString(7));
					b.setPublication(rs.getString(9));
				
					b.setCopies(rs.getInt(11));
					list.add(b);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		return list;
			
		}
		
		public int getbookreportcount(String category) {
			int count =0 ;
			try {
				
				
				String sql ="select * from book_details where bookCategory=?";
			    PreparedStatement ps = conn.prepareStatement(sql);
			    ps.setString(1, category);
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
		
         public List<BookDetails> getAuthorReport(String author){
			
			List<BookDetails> list = new ArrayList<BookDetails>();
			BookDetails b = null; 
			try {
				

				String sql = "select * from book_details where author=?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, author);
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					b = new BookDetails();
					
					b.setBookName(rs.getString(2));
					b.setAuthorName(rs.getString(3));
					b.setPrice(rs.getDouble(4));
					b.setBookCategory(rs.getString(5));
					b.setFileName(rs.getString(7));
					b.setPublication(rs.getString(9));
				
					b.setCopies(rs.getInt(11));
					list.add(b);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		return list;
			
		}
         
         public int getAuthorReportCount(String author) {
 			int count =0 ;
 			try {
 				
 				
 				String sql ="select * from book_details where author=?";
 			    PreparedStatement ps = conn.prepareStatement(sql);
 			    ps.setString(1, author);
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
         
         public List<BookDetails> getPubReport(String pub){
 			
 			List<BookDetails> list = new ArrayList<BookDetails>();
 			BookDetails b = null; 
 			try {
 				

 				String sql = "select * from book_details where publication=?";
 				PreparedStatement ps = conn.prepareStatement(sql);
 				ps.setString(1, pub);
 				ResultSet rs = ps.executeQuery();
 				while(rs.next())
 				{
 					b = new BookDetails();
 					
 					b.setBookName(rs.getString(2));
 					b.setAuthorName(rs.getString(3));
 					b.setPrice(rs.getDouble(4));
 					b.setBookCategory(rs.getString(5));
 					b.setFileName(rs.getString(7));
 					b.setPublication(rs.getString(9));
 				
 					b.setCopies(rs.getInt(11));
 					list.add(b);
 				}
 				
 			}catch(Exception e) {
 				e.printStackTrace();
 			}
 		
 		return list;
 			
 		}
          
          public int getPubReportCount(String pub) {
  			int count =0 ;
  			try {
  				
  				
  				String sql ="select * from book_details where publication=?";
  			    PreparedStatement ps = conn.prepareStatement(sql);
  			    ps.setString(1, pub);
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
          
          public List<BookDetails> getPriceReport(String operator,int price){
   			
   			List<BookDetails> list = new ArrayList<BookDetails>();
   			BookDetails b = null; 
   			try {
   				String sql="";
   				
                if("<=".equals(operator)) {
                	
   				    sql = "select * from book_details where price <= ?";
                }
                else if(">=".equals(operator)) {
                	sql = "select * from book_details where price >= ?";
                }
                else if("==".equals(operator)) {
                	sql = "select * from book_details where price = ?";
                }
   				PreparedStatement ps = conn.prepareStatement(sql);
   				ps.setInt(1,price);
   				ResultSet rs = ps.executeQuery();
   				while(rs.next())
   				{
   					b = new BookDetails();
   					
   					b.setBookName(rs.getString(2));
   					b.setAuthorName(rs.getString(3));
   					b.setPrice(rs.getDouble(4));
   					b.setBookCategory(rs.getString(5));
   					b.setFileName(rs.getString(7));
   					b.setPublication(rs.getString(9));
   				
   					b.setCopies(rs.getInt(11));
   					list.add(b);
   				}
   				
   			}catch(Exception e) {
   				e.printStackTrace();
   			}
   		
   		return list;
   			
   		}
            
            public int getPriceReportCount(String operator,int price) {
    			int count =0 ;
    			try {
    				
    				String sql="";
       				
                    if("<=".equals(operator)) {
                    	
       				    sql = "select * from book_details where price <= ?";
                    }
                    else if(">=".equals(operator)) {
                    	sql = "select * from book_details where price >= ?";
                    }
                    else if("==".equals(operator)) {
                    	sql = "select * from book_details where price = ?";
                    }
    				
    			    PreparedStatement ps = conn.prepareStatement(sql);
    			    ps.setInt(1, price);
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
            
            
            public int getBookReportBCount() {
      			int count =0 ;
      			try {
      				
      				
      				String sql ="select copies from book_details";
      			    PreparedStatement ps = conn.prepareStatement(sql);
      			    
      			    ResultSet rs = ps.executeQuery();
      			    while(rs.next()) {
      			    	count += rs.getDouble(1);
      			    }
      			    
      			  String sql1 ="select no_of_copies from cart";
    			    PreparedStatement ps1 = conn.prepareStatement(sql1);
    			    
    			    ResultSet rs1 = ps1.executeQuery();
    			    while(rs1.next()) {
    			    	count += rs1.getDouble(1);
    			    }
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
          
            public int getBookReportACount() {
      			int count =0 ;
      			try {
      				
      				
      				String sql ="select copies from book_details";
      			    PreparedStatement ps = conn.prepareStatement(sql);
      			    
      			    ResultSet rs = ps.executeQuery();
      			    while(rs.next()) {
      			    	count += rs.getDouble(1);
      			    }
      			    
      			 
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
            
            
            public int getBookReportSCount() {
      			int count =0 ;
      			try {
      				
      				
      				
      			    
      			  String sql1 ="select no_of_copies from cart";
    			    PreparedStatement ps1 = conn.prepareStatement(sql1);
    			    
    			    ResultSet rs1 = ps1.executeQuery();
    			    while(rs1.next()) {
    			    	count += rs1.getDouble(1);
    			    }
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
            
            public int getBookReportJCount() {
      			int count =0 ;
      			try {
      				
      				
      				String sql ="select copies from book_details where bookCategory='JEE Books'";
      			    PreparedStatement ps = conn.prepareStatement(sql);
      			    
      			    ResultSet rs = ps.executeQuery();
      			    while(rs.next()) {
      			    	count += rs.getDouble(1);
      			    }
      			    
      			 
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
            
            public int getBookReportNCount() {
      			int count =0 ;
      			try {
      				
      				
      				String sql ="select copies from book_details where bookCategory='NEET Books'";
      			    PreparedStatement ps = conn.prepareStatement(sql);
      			    
      			    ResultSet rs = ps.executeQuery();
      			    while(rs.next()) {
      			    	count += rs.getDouble(1);
      			    }
      			    
      			 
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
            
            public int getBookReportSSCount() {
      			int count =0 ;
      			try {
      				
      				
      				String sql ="select copies from book_details where bookCategory='SSC Books'";
      			    PreparedStatement ps = conn.prepareStatement(sql);
      			    
      			    ResultSet rs = ps.executeQuery();
      			    while(rs.next()) {
      			    	count += rs.getDouble(1);
      			    }
      			    
      			 
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
            
            public int getBookReportPCount() {
      			int count =0 ;
      			try {
      				
      				
      				String sql ="select copies from book_details where bookCategory='Programming Books'";
      			    PreparedStatement ps = conn.prepareStatement(sql);
      			    
      			    ResultSet rs = ps.executeQuery();
      			    while(rs.next()) {
      			    	count += rs.getDouble(1);
      			    }
      			    
      			 
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
            
            
            public int getBookReportSTCount() {
      			int count =0 ;
      			try {
      				
      				
      				String sql ="select copies from book_details where bookCategory='Story Books'";
      			    PreparedStatement ps = conn.prepareStatement(sql);
      			    
      			    ResultSet rs = ps.executeQuery();
      			    while(rs.next()) {
      			    	count += rs.getDouble(1);
      			    }
      			    
      			 
      			    
      			}
      			catch(Exception e){
      				e.printStackTrace();
      			}
      			return count;
      		}
}
