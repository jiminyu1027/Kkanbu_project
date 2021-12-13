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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.AnswerService;
import edu.study.service.CartService;
import edu.study.service.MemberService;
import edu.study.vo.AnswerVO;
import edu.study.vo.CartVO;
import edu.study.vo.InquiryVO;
import edu.study.vo.MemberVO;

@RequestMapping(value="/mypage/claim")
@Controller
public class ClaimController {
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	edu.study.service.InquiryService InquiryService;
	
	@Autowired
	AnswerService AnswerService;
	
	@Autowired
	CartService CartService;
	
	//마이페이지
	@RequestMapping(value="/myPage.do")
	public String myPage(@ModelAttribute CartVO cvo,Locale locale, Model model, HttpSession session)throws Exception {
		MemberVO member=(MemberVO)session.getAttribute("member");
		

		if(member != null){
			
			List<CartVO> list=CartService.list(member.getMidx());
			model.addAttribute("list",list);
			
			return "/mypage/claim/myPage";
		}else {
			return "redirect:/login.do";
		}
		
	}
	
	@RequestMapping(value="/insertCard.do")
	public String insertCard(@ModelAttribute CartVO cvo,Locale locale, Model model, HttpSession session)throws Exception {
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member != null){
			List<CartVO> list=CartService.list(member.getMidx());
			model.addAttribute("list",list);
			
			return "/mypage/claim/insertCard";
		}else {
			return "redirect:/login.do";
		}
	}
	@RequestMapping(value="/refund.do")
	public String refund(@ModelAttribute CartVO cvo,Locale locale, Model model, HttpSession session)throws Exception {
		
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member != null){
			List<CartVO> list=CartService.list(member.getMidx());
			model.addAttribute("list",list);
			
			return "/mypage/claim/refund";
		}else {
			return "redirect:/login.do";
		}
		
		
	}
	@RequestMapping(value="/orderCancel.do")
	public String orderCancel(@ModelAttribute CartVO cvo,Locale locale, Model model, HttpSession session)throws Exception {
		
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member != null){
			List<CartVO> list=CartService.list(member.getMidx());
			model.addAttribute("list",list);
			
			return "/mypage/claim/orderCancel";
		}else {
			return "redirect:/login.do";
		}
		
		
	}
	@RequestMapping(value="/inquiryContents.do")
	public String inquiryList(Locale locale,Model model,@RequestParam("qidx") int qidx,HttpSession httr)throws Exception{
		
		MemberVO member = (MemberVO)httr.getAttribute("member");
		int midx = member.getMidx();
		
		InquiryVO mvo = new InquiryVO();
		mvo.setMidx(midx);
		mvo.setQidx(qidx);
		InquiryVO ivo = InquiryService.detail(mvo);
		
		List<AnswerVO> alist = AnswerService.alist(qidx);
		
		model.addAttribute("alist",alist);
		model.addAttribute("ivo",ivo);
		model.addAttribute("qidx",qidx);
		return "/mypage/claim/inquiryContents";
	}
	
	@RequestMapping(value="/comment.do", method=RequestMethod.POST)
	public String comment(Locale locale,Model model,AnswerVO vo,@RequestParam("qidx") int qidx,HttpSession httr) throws Exception{
		
		MemberVO member = (MemberVO)httr.getAttribute("member");
		//
		int midx = member.getMidx();
		//로그인 된 유저의 midx 값을 갖고온다.
		
		vo.setMidx(midx);
		//vo에 midx값을 넣어준다.
		vo.setQidx(qidx);
		
		AnswerService.insert(vo);
		
		return "redirect:/mypage/claim/inquiryContents.do?qidx="+qidx+"";
	}
}

	
