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
import edu.study.vo.QaVO;

@RequestMapping(value="/mypage/shopping")
@Controller
public class ShoppingController {
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	edu.study.service.QaService QaService;
	
	@RequestMapping(value="/wishlist.do")
	public String wishlist(Locale locale, Model model)throws Exception{
		
		return "/mypage/shopping/wishlist";
	}
	
	@RequestMapping(value="/qaList.do")
	public String qaList(Locale locale,Model model)throws Exception{
		
		List<QaVO> pqlist = QaService.pqlist();
		
		model.addAttribute("pqlist",pqlist);
		
		return "/mypage/shopping/qaList";
	}
	
	@RequestMapping(value="/qaList.do",method=RequestMethod.POST)
	public String insert(Locale locale,Model model,QaVO vo,HttpSession httr) throws Exception{
		
			MemberVO member = (MemberVO)httr.getAttribute("member");
			
			int midx = member.getMidx();
			
			vo.setMidx(midx);
			
			QaService.insert(vo);
			
		return "redirect:/mypage/shopping/qaList.do";
	}
	
	@RequestMapping(value="/myReview.do")
	public String myReview(Locale locale,Model model)throws Exception{
		
		return "/mypage/shopping/myReview";
	}
}

	
