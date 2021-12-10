package edu.study.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.study.service.CartService;
import edu.study.service.OrderService;
import edu.study.service.ProductService;
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
	
	@RequestMapping(value="/orderpayment.do")
	public String insert (Model model, Locale locale, @RequestParam("ctidx")int ctidx ,CartVO cvo,HttpSession session)throws Exception{
		MemberVO member = (MemberVO)session.getAttribute("member");
	
		//CartService.update(cvo);
		//CartService.insert(cvo);
		
		CartVO ovo = cartService.listOne(cvo);
		
		//System.out.println("가나다라마바사아자차카타파하"+cvo.getMidx());
		//System.out.println("ovo"+ovo.getCtsize());
		
		model.addAttribute("ovo",ovo);
			
		return "/order/orderpayment";
	}
	
	
}

	
