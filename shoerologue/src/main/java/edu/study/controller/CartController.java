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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.CartService;
import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;

@RequestMapping(value="/cart")
@Controller
public class CartController {
	
	@Autowired
	CartService CartService;

	@RequestMapping(value="/cart.do", method=RequestMethod.GET)
	public String cart(Locale locale, Model model)throws Exception{
		
		//List<CartVO> clist = CartService.list(ctidx);
		//model.addAttribute("list", clist);
		
		return "/cart/cart";
	}

//	@ResponseBody
//	@RequestMapping(value = "/cart.do", method=RequestMethod.POST)
//	public void insert(Locale locale, Model model, CartVO cvo, HttpSession session) throws Exception{
//		MemberVO member = (MemberVO)session.getAttribute("member");
//		cvo.setMidx(member.getMidx());
//		
//		CartService.insert(cvo);
//	}

	
}

	
