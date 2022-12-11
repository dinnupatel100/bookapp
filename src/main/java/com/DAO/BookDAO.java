package com.DAO;

import java.util.List;

import com.entity.BookDetails;

public interface BookDAO {
      public boolean addBooks(BookDetails b1);
      
      public List<BookDetails> getAllBooks();
      
      public BookDetails getBookById(int id);
      
      public boolean updateBooks(BookDetails b);
      
      public boolean deleteBooks(int id);
      
      public List<BookDetails> getfreeBooks();
      
      public List<BookDetails> getStoryBooks();
      
      public List<BookDetails> getPopularBooks();
      
      public List<BookDetails> getAllFreeBooks();
      
      public List<BookDetails> getAllStoryBooks();
      
      public List<BookDetails> getAllPopularBooks();
}
