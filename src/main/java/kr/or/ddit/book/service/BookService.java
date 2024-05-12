package kr.or.ddit.book.service;

import java.util.Map;

public interface BookService {
	
	public String create(Map<String, Object>map);

	Map<String, Object> selectDetail(Map<String, Object> map);

}
