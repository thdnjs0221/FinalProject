package kr.or.ddit.book.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.book.service.BookService;
import kr.or.ddit.book.vo.BookVO;
import kr.or.ddit.paging.vo.PaginationInfo;

@Controller
public class BookController {

	@Autowired
	BookService service;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		return new ModelAndView("/book/list");
	}
	
	@RequestMapping(value = "/listData", method = RequestMethod.GET)
	public String listData(@RequestParam Map<String, Object> variousCondition,// HTTP 요청의 파라미터를 자동으로 수집해 map으로 전달
			@RequestParam(value = "page", required = false, defaultValue = "1")int currentPage, Model model
			//value는 매개변수 이름, required 필수 여부 ,defaultValue 기본값 설정 요청에 해당 매개변수가 포함되지 않았을 때 사용
			) {
		PaginationInfo<BookVO> paging = new PaginationInfo<BookVO>(10,5);
		paging.setCurrentPage(currentPage);
		paging.setVariousCondition(variousCondition);
		
		
		
		
		
				return null;
		
	}
	
	
	
	
	
	//책 생성UI
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("/book/create");
		
	}
	
	//책 insert
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {

		ModelAndView mav = new ModelAndView();
		String bookId = service.create(map);

		if (bookId == null) {
			mav.setViewName("redirect:/book/create");
		} else {
			mav.setViewName("redirect:/book/detail?bookId=" + bookId);
		}
		return mav;
	}
	
	@RequestMapping(value = "/deatil")
	public ModelAndView detail(@RequestParam Map<String, Object>map) {
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> detailMap = service.selectDetail(map);
		
		mav.addObject("data",detailMap);
		String bookId = map.get("bookId").toString();
		mav.addObject("bookId",bookId);//bookid도 뷰로 전달, 쿼리 스트링 파라미터에서 가지고 왔음
		
		mav.setViewName("/book/detail");
		
		return mav;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
