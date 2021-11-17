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
import edu.study.vo.BoardUseMyBatisVO;
import edu.study.vo.SampleVO;
import edu.study.vo.MemberVO;

@RequestMapping(value="/Shoerologue")
@Controller
public class ShoppingController {
	
	@Autowired
	MemberService MemberService;
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(Locale locale, Model model, MemberVO vo)throws Exception {
		model.addAttribute("vo", vo);
	
		return "shoerologue/login";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(Locale locale, Model model, HttpSession session,  MemberVO vo, RedirectAttributes rttr) throws Exception{
		
			MemberVO login = MemberService.login(vo);
			String mName = (String)session.getAttribute("mName");
			String master = (String) session.getAttribute("master");
			//System.out.println("¿Ã∏ß33!!"+mName);
			if(login == null) {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", false);
				//System.out.println("¿Ã∏ß22!!"+mName);
				return "redirect:/Shoerologue/login.do";
			}else {
				
				mName= login.getmName();
				master = login.getMaster();
				
				session.setAttribute("mName", mName);
				session.setAttribute("master", master);
				
				//System.out.println("¿Ã∏ß!!"+mName);
				
				session.setAttribute("member", login);
				
				return "redirect:/main.do";
			}
			
			
		}
	
	@RequestMapping(value="/join.do")
	public String join(Locale locale, Model model,MemberVO vo)throws Exception {
		//System.out.println("midx>>>>>>>>>>>"+vo.getMidx());
		//TestMemberservice.insert(vo);	
		
		return "shoerologue/join";
	}
		@RequestMapping(value="/joinAction.do")
		public String joinAction(Locale locale, Model model,MemberVO vo)throws Exception {
			System.out.println("MNAME>>>>>>>>>>>"+vo.getmName());
			System.out.println("MID>>>>>>>>>>"+vo.getmId());
			System.out.println("MPWD>>>>>>>>>>>"+vo.getmPwd());
			System.out.println("MPHONE>>>>>>>>>>>"+vo.getmPhone());
			System.out.println("MEMAIL>>>>>>>>>>>"+vo.getmEmail());
			System.out.println("MADDR>>>>>>>>>>>"+vo.getmAddr());
			
			MemberService.insert(vo);	
			
			return "redirect:/main.do";		
		
	}
	@RequestMapping(value="/myPage.do")
	public String myPage(Locale locale, Model model)throws Exception {
		
		return "shoerologue/myPage";
	}
	
	
	
	/*--------------------------¥Ÿ¿±----------------------------------------------*/
	@RequestMapping(value="/cart.do")
	public String cart(Locale locale, Model model)throws Exception{
		
		return "shoerologue/cart";
	}
	
	@RequestMapping(value="/wishlist.do")
	public String wishlist(Locale locale, Model model)throws Exception{
		
		return "shoerologue/wishlist";
	}
	/*------------------------¥Ÿ¿±------------------------------------------------*/
	
	
	
	/*--------------------------------------------------------------ªÛ»∆--------*/
	
	@RequestMapping(value="/findId.do")
	public String findId(Locale locale, Model model)throws Exception {
		
		return "shoerologue/findId";
	}
	@RequestMapping(value="/findPwd.do")
	public String findPwd(Locale locale, Model model)throws Exception {
		
		return "shoerologue/findPwd";
	}
	@RequestMapping(value="/insertCard.do")
	public String insertCard(Locale locale, Model model)throws Exception {
		
		return "shoerologue/insertCard";
	}
	@RequestMapping(value="/refund.do")
	public String refund(Locale locale, Model model)throws Exception {
		
		return "shoerologue/refund";
	}
	@RequestMapping(value="/orderCancel.do")
	public String orderCancel(Locale locale, Model model)throws Exception {
		
		return "shoerologue/orderCancel";
	}
	@RequestMapping(value="/receiveAddr.do")
	public String receiveAddr(Locale locale, Model model)throws Exception {
		
		return "shoerologue/receiveAddr";
	}
	@RequestMapping(value="/myInfo.do")
	public String myInfo(Locale locale, Model model)throws Exception {
		
		return "shoerologue/myInfo";
	}
	@RequestMapping(value="/leave.do")
	public String leave(Locale locale, Model model)throws Exception {
		
		return "shoerologue/leave";
	}
	/*--------------------------------------------------------------ªÛ»∆--------*/
	
	@RequestMapping(value="/myInfoPwd.do")
	public String myInfoPwd(Locale locale, Model model)throws Exception {
		
		return "shoerologue/myInfoPwd";
	}
	@RequestMapping(value="/cs.do")
	public String cs(Locale locale,Model model)throws Exception{

		return "shoerologue/cs";
	}

}

	
