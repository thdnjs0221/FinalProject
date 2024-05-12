package kr.or.ddit.book.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "bookId")
public class BookVO {
	
	private String bookId;
	private String category;
	private String title;
	private String price;
	private String insertDate;

}
