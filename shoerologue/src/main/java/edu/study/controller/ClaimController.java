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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.MemberService;
import edu.study.vo.MemberVO;

@RequestMapping(value="/Shoerologue/mypage/claim")
@Controller
public class ClaimController {
	
	@Autowired
	MemberService MemberService;

	@RequestMapping(value="/myPage.do")
	public String myPage(Locale locale, Model model)throws Exception {
		
		return "shoerologue/mypage/claim/myPage";
	}
	
	@RequestMapping(value="/insertCard.do")
	public String insertCard(Locale locale, Model model)throws Exception {
		
		return "shoerologue/mypage/claim/insertCard";
	}
	@RequestMapping(value="/refund.do")
	public String refund(Locale locale, Model model)throws Exception {
		
		return "shoerologue/mypage/claim/refund";
	}
	@RequestMapping(value="/orderCancel.do")
	public String orderCancel(Locale locale, Model model)throws Exception {
		
		return "shoerologue/mypage/claim/orderCancel";
	}
	@RequestMapping(value="/inquiryContents.do")
	public String inquiryList(Locale locale,Model model)throws Exception{
		
		return "shoerologue/mypage/claim/inquiryContents";
	}
	
}

	
