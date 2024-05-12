package kr.or.ddit.book.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.book.vo.BookVO;

@Mapper
public interface BookDAO {
	
	public int insertBook (Map<String, Object>map);


	public Map<String, Object>selectDetail (Map<String, Object>map);
	
	public List<BookVO>selectList();
	
	public int selectTotalRecord();
}
