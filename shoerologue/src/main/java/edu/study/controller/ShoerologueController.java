package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/Shoerologue")
@Controller
public class ShoerologueController {
	
	@RequestMapping(value="/login.do")
	public String login(Locale locale, Model model)throws Exception {
		
		return "shoerologue/login";
	}
	@RequestMapping(value="/join.do")
	public String join(Locale locale, Model model)throws Exception {
		
		return "shoerologue/join";
	}
	@RequestMapping(value="/myPage.do")
	public String myPage(Locale locale, Model model)throws Exception {
		
		return "shoerologue/myPage";
	}
	
	@RequestMapping(value="/ff.do")
	public String ff(Locale locale, Model model)throws Exception {
		
		return "shoerologue/ff";
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
	
}

	
