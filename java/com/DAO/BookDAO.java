package com.DAO;

import java.util.List;

import com.Entity.BookDetails;

public interface BookDAO {
      public boolean addBooks(BookDetails b1);
      
      public List<BookDetails> getAllBooks();
      
      public List<BookDetails> getcartBooks(String email);
      
      public List<BookDetails> getSellerAllBooks(String email);
      
      public BookDetails getBookById(int id);
      
      public boolean updateBooks(BookDetails b);
      
      public boolean deleteBooks(int id);
      
      public List<BookDetails> getJeeBooks();
      
      public List<BookDetails> getStoryBooks();
      
      public List<BookDetails> getNeetBooks();
      
      public List<BookDetails> getSscBooks();
      
      public List<BookDetails> getProgBooks();
      
      public List<BookDetails> getAllJeeBooks();
      
      public List<BookDetails> getAllStoryBooks();
      
      public List<BookDetails> getAllNeetBooks();
      
      public List<BookDetails> getAllProgBooks();
      
      public List<BookDetails> getAllSscBooks();
      
      public List<BookDetails> getSearchBooks(String ch);
      
      public List<BookDetails> getorderBooks(String email);
      
      
      public boolean buybook(int bid,String buyer_email,String seller_email,int copies);
      
      public List<BookDetails> getbookreport(String category);
      
      public int getbookreportcount(String category);
      
      public List<BookDetails> getAuthorReport(String author);
      
      public int getAuthorReportCount(String author);
      
      public List<BookDetails> getPubReport(String pub);
      
      public int getPubReportCount(String pub);
      
      public List<BookDetails> getPriceReport(String operator,int price);
      
      public int getPriceReportCount(String operator,int price);
      
      public int getBookReportBCount();
      
      public int getBookReportSCount();
      
      public int getBookReportACount();
      
      public int getBookReportJCount();
      public int getBookReportNCount();
      public int getBookReportSSCount();
      public int getBookReportPCount();
      public int getBookReportSTCount();
}
