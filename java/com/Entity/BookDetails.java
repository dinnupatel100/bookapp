package com.Entity;

public class BookDetails {
	
	private int bookId;
	private String bookName;
	private String authorName;
	private Double price;
	private String bookCategory;
	private String status;
	private String fileName;
	private String email;
	private String publication;
	private String edition;
	private int copies;
	
	
	public String getPublication() {
		return publication;
	}
	public void setPublication(String publication) {
		this.publication = publication;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public int getCopies() {
		return copies;
	}
	public void setCopies(int copies) {
		this.copies = copies;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookid) {
		this.bookId = bookid;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookname) {
		this.bookName = bookname;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorname) {
		this.authorName = authorname;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getBookCategory() {
		return bookCategory;
	}
	public void setBookCategory(String bookcategory) {
		this.bookCategory = bookcategory;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String filename) {
		this.fileName = filename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "BookDetails [bookid=" + bookId + ", bookname=" + bookName + ", authorname=" + authorName + ", price="
				+ price + ", bookcategory=" + bookCategory + ", status=" + status + ", filename=" + fileName
				+ ", email=" + email + "]";
	}
	public BookDetails( String bookName, String authorName, Double price,String publication,String edition,int copies, String bookCategory, String status,
			String fileName, String email) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.authorName = authorName;
		this.price = price;
		this.publication = publication;
		this.edition = edition;
		this.copies = copies;
		this.bookCategory = bookCategory;
		this.status = status;
		this.fileName = fileName;
		this.email = email;
	}
	public BookDetails() {
		super();
	}
	
	
	
	

}
