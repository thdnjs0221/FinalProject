package kr.or.ddit.company.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.service.MemberService;
import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CompanyController {
	
	@Inject
	private MemberService memberService;
	
	
	@Value("#{appInfo.recruitFiles}")
	private String saveFolderStr;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource saveFolder;
	
	
	 //post에서 재활용을 위해
	@ModelAttribute("company")
	public CompanyVO company() {
		return new CompanyVO();
	}
	
	//value="${member.memId}"
	@ModelAttribute("member")
	public MemberVO member() {
		return new MemberVO();
	}
	
	//아이디 중복 검사
	@ResponseBody
	@PostMapping("/company/{memId}/checkId")
	public String checkId(
			@ModelAttribute ("member")MemberVO member
			,@PathVariable String memId
			) {
		String msg = "NG";     
		
		log.info("dfs",memId);
		
		ServiceResult result = memberService.retrieveMemId(memId); 
		
		if(result == ServiceResult.OK) {
			msg = "OK";
		}
		return msg;
		
		
	}
		
	//기업 회원가입 UI
	@GetMapping("/company")
	public String companyForm() {
		return "users/auth/companyJoin";
		
	}
	
	//기업 회원가입 insert
		@PostMapping("/company/new")
		public String companyInsert(
							@Validated(InsertGroup.class)@ModelAttribute("member")MemberVO memberVo
							,BindingResult errors
							,Model model
							) throws Exception, IOException {
			
			log.info("파일확인{}",memberVo);
			
			MultipartFile upload = memberVo.getCompany().getCompanyImage();
			//MultipartFile 객체를 가져온다.CompanyImage()는 디비가 아닌 클라이언트(사용자)와의 대화
			
			if(!upload.isEmpty()) {
				String saveName = "company"+UUID.randomUUID().toString()+".png"; 
				//새로운 파일 명을 UUID로 만들고 
				File saveFileTemp =  new File(saveFolder.getFile()+"/company");
				//파일이 저장될 디렉토리(폴더)를 설정한다.
				
				if(!saveFileTemp.exists()) {
					//해당 디렉토리(폴더)가 없으면 만들어주기
					saveFileTemp.mkdirs();
					//mkdirs() -> 중간 경로에 존재하지 않는 디렉토리도 모두 생성
				}
				File saveFile = new File(saveFileTemp,saveName);
				//실제 파일이 저장될 경로를 File 객체로 생성합니다. 
				//이 때, 첫 번째 매개변수로는 디렉토리를 전달하고, 두 번째 매개변수로는 파일의 이름을 전달
				
				upload.transferTo(saveFile); //업로드 완료
				
				memberVo.getCompany().setCompanyFile(saveName);
				//저장 이름 디비에 저장하기
			}
			boolean valid = !errors.hasErrors();
			memberVo.getCompany().setCompanyId(memberVo.getMemId()); 

			String viewName = null;
			if(valid) {
				ServiceResult result =memberService.createCompanyMember(memberVo);
				switch (result) {
				case OK:
					viewName = "redirect:/";
					break;

				default:
					model.addAttribute("message", "서버 오류, 다시 시도해주세요");
					viewName = "users/auth/companyJoin";
					break;
				}
			}else {
				//검증 불통
				viewName = "users/auth/companyJoin";
			}
			return viewName;
		}
}