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
	@RequestMapping(value="/ll.do")
	public String ll(Locale locale, Model model)throws Exception {
		
		return "shoerologue/ll";
	}
	
	@RequestMapping(value="/cart.do")
	public String cart(Locale locale, Model model)throws Exception{
		
		return "shoerologue/cart";
	}
	
	@RequestMapping(value="/wishlist.do")
	public String wishlist(Locale locale, Model model)throws Exception{
		
		return "shoerologue/wishlist";
	}
}

	
