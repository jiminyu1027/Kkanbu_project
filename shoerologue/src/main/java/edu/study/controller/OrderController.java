package edu.study.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.study.service.CartService;
import edu.study.service.MemberService;
import edu.study.service.OrderService;
import edu.study.service.ProductService;
import edu.study.vo.AddressVO;
import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;
import edu.study.vo.OrderVO;
import edu.study.vo.ProductVO;

@RequestMapping(value="/order")
@Controller
public class OrderController{
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	CartService cartService;
	
	@Autowired
	MemberService MemberService;
	
	@RequestMapping(value="/orderpayment.do")
	public String insert (Model model, Locale locale, CartVO cvo,MemberVO mvo, HttpSession session)throws Exception{
		MemberVO member=(MemberVO)session.getAttribute("member");
		int midx = member.getMidx();
		
		List<CartVO> list = cartService.order(cvo);
		//System.out.println("listsize:="+cvo.getShoes().length);
		MemberVO mInfo = MemberService.member(midx);
		
		model.addAttribute("list", list);
		model.addAttribute("mInfo", mInfo);
		return "/order/orderpayment";
	}
	
	@RequestMapping(value="/tests.do")
	@ResponseBody
	public MemberVO selectOne(Locale locale, Model model,HttpSession session) throws Exception{
		MemberVO member=(MemberVO)session.getAttribute("member");
		int midx = member.getMidx();
		
		MemberVO mvo = MemberService.member(midx);
		
		return mvo;
	}
	
}

	
