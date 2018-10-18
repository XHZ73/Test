package user.zhanghao.test.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sys_book")
public class Book implements Serializable{
	private static final long serialVersionUID = 1L;
	private Long bookId;			//主键
	private String bookname;		//书名
	private String author;			//作者
	private String publish;			//出版社
	private Date publishdate;		//出版时间
	private Integer page;			//页数
	private String price;			//价格
	private String content;			//简介
	
	
	public Book() {}
	public Book(Long bookId, String bookname, String author, String publish, Date publishdate, Integer page,
			String price, String content) {
		this.bookId = bookId;
		this.bookname = bookname;
		this.author = author;
		this.publish = publish;
		this.publishdate = publishdate;
		this.page = page;
		this.price = price;
		this.content = content;
	}
	
	public Book( String bookname, String author, String publish, Date publishdate, Integer page,
			String price, String content) {
		this.bookname = bookname;
		this.author = author;
		this.publish = publish;
		this.publishdate = publishdate;
		this.page = page;
		this.price = price;
		this.content = content;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="book_id")
	public Long getBookId() {
		return bookId;
	}
	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}
	
	@Column(name="book_name")
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	
	@Column(name="author")
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	@Column(name="publish")
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	
	@Column(name="publishdate")
	public Date getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(Date publishdate) {
		this.publishdate = publishdate;
	}
	
	@Column(name="page")
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	
	@Column(name="price")
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	@Column(name="content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	public String toString() {
		return "Book [bookId=" + bookId + ", bookname=" + bookname + ", author=" + author + ", publish=" + publish
				+ ", publishdate=" + publishdate + ", page=" + page + ", price=" + price + ", content=" + content + "]";
	}
	
	
}
