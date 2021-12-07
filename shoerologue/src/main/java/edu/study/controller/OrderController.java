package edu.study.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.study.service.CartService;
import edu.study.service.OrderService;
import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;
import edu.study.vo.OrderVO;

@RequestMapping(value="/order")
@Controller
public class OrderController{
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping(value="/orderpayment.do")
	public String orderpayment(Locale locale, Model model, HttpSession session)throws Exception {
		
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member != null){
			List<OrderVO> list=orderService.list(member.getMidx());
			
			model.addAttribute("list",list);
		}
		
		return "/order/orderpayment";
	}
	
}

	
