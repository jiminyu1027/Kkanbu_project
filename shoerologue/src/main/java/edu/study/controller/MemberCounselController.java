package edu.study.controller;

import java.util.List;
import java.util.Locale;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.InquiryService;
import edu.study.service.MemberService;
import edu.study.vo.AnswerVO;
import edu.study.vo.InquiryVO;
import edu.study.vo.MemberVO;

@RequestMapping(value="/mypage/memberCounsel")
@Controller
public class MemberCounselController {
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	InquiryService InquiryService; 

	@RequestMapping(value="/inquiry.do", method = RequestMethod.GET)
	public String inquiry(Locale locale, Model model,HttpSession httr)throws Exception{
		
		MemberVO member = (MemberVO)httr.getAttribute("member");
		
		List<InquiryVO> qlist = InquiryService.qlist(member.getMidx());
		
		List<InquiryVO> masterList = InquiryService.masterList();
		
		model.addAttribute("masterList",masterList);
		
		model.addAttribute("qlist",qlist);
		
		return "/mypage/memberCounsel/inquiry";
	}
	
	@RequestMapping(value="/inquiry.do", method = RequestMethod.POST)
	public String delete(Locale locale,Model model,@RequestParam("qidx") int qidx) throws Exception{
		
				
		InquiryService.delete(qidx);
		
		return "redirect:/mypage/memberCounsel/inquiry.do";
	}
	
	
	@RequestMapping(value="/inquiryAction.do")
	public String inquiry(Locale locale,Model model,InquiryVO vo,HttpSession httr)throws Exception{
		
		MemberVO member = (MemberVO)httr.getAttribute("member");
		//
		int midx = member.getMidx();
		//로그인 된 유저의 midx 값을 갖고온다.
		
		vo.setMidx(midx);
		//vo에 midx값을 넣어준다.
		
		InquiryService.insert(vo);
			
		return "redirect:/mypage/memberCounsel/inquiry.do";
	}
	
}

	
