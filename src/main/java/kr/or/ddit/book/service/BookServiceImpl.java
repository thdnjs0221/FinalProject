package kr.or.ddit.book.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.book.dao.BookDAO;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	BookDAO bookDao;

	// 책 생성하기
	@Override
	public String create(Map<String, Object> map) {
		
		int row = bookDao.insertBook(map);
		
		if(row>0) {
			return map.get("book_id").toString();
		}
		return null;
	}
	
	// 책 상세보기
	@Override
	public Map<String, Object> selectDetail (Map<String, Object>map){
		return bookDao.selectDetail(map); //DAO를 호출한 결과를 바로 리턴
	}
	
	

}
