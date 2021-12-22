package edu.study.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.study.domain.Criteria;
import edu.study.domain.PageMaker;
import edu.study.service.MemberService;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;

@RequestMapping(value="/admin")
@Controller
public class AdminController {

	@Autowired
	edu.study.service.ProductService ProductService;
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping(value="/inquiryAsk.do")
	public String ask(Locale locale,Model model)throws Exception{
		
		return "/admin/inquiryAsk";
	}
	
	@RequestMapping(value="/noticeWrite.do")
	public String noticeWrite(Locale locale,Model model)throws Exception{
		
		return "/admin/noticeWrite";
	}
	
	@RequestMapping(value="/qaAsk.do")
	public String qaAsk(Locale locale, Model model,int pidx,HttpSession session)throws Exception{
		MemberVO member=(MemberVO)session.getAttribute("member");
		if(member != null) {
			
			ProductVO pvo = ProductService.detail(pidx);
			model.addAttribute("pvo",pvo);
		return "/admin/qaAsk";
		}else {
		return "redirect:/login.do";
		}
	}	
	
	@RequestMapping(value="/memberList.do")
	public String memberList(Locale locale, Model model,MemberVO mvo,Criteria cri)throws Exception {
		
		List<MemberVO> list= memberService.list(mvo,cri);
		
		model.addAttribute("list", list);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberService.countMemberList());
		
		model.addAttribute("pageMaker", pageMaker);
			
		
		return "/admin/memberList";
	}	
}
