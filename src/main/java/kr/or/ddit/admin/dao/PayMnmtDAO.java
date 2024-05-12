package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.CmpAdvrtPayVO;
import kr.or.ddit.company.vo.ImageAdvrtVO;
import kr.or.ddit.company.vo.ImgAdvrtPayVO;
import kr.or.ddit.users.vo.PointPayVO;


@Mapper
public interface PayMnmtDAO {
	
	/**
	 * 이미지 신청 리스트 불러오기
	 * @return
	 */
	public List<ImgAdvrtPayVO> selectImgAdFormList();

	/**
	 * 이미지 신청 '반려' 리스트 불러오기
	 * @return
	 */
	public List<ImgAdvrtPayVO> disagreeImgAdFormList();
	
	/**
	 * 이미지 신청 '승인' 리스트 불러오기
	 * @return
	 */
	public List<ImgAdvrtPayVO> agreeImgAdFormList();
	
	/**
	 * 이미지 신청 반려하기
	 * @param imgAdvrtPayVO
	 */
	public int disagreeImgForm(ImgAdvrtPayVO imgAdvrtPayVO);

	/**
	 * 이미지 신청 승인하기
	 * @param imgAdvrtPayVO
	 */
	public int agreeImgForm(ImgAdvrtPayVO imgAdvrtPayVO);

	/**
	 * 이미지 신청 대기하기
	 * @param imgAdvrtPayVO
	 */
	public int holdImgForm(ImgAdvrtPayVO imgAdvrtPayVO);
	
	/**
	 * 이용권 결제 내역 불러오기
	 * @return
	 */
	public List<PointPayVO> selectPeriodTicketPay();

	/**
	 * 이미지 광고 결제 내역 불러오기
	 * @return
	 */
	public List<ImgAdvrtPayVO> selectImgAdPay();

	 /**
	  * 기업 광고 결제 내역 불러오기
	  * @return
	  */
	public List<CmpAdvrtPayVO> selectcmpAdPay();



}
