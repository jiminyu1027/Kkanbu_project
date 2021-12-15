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
	ProductService productService;
	
	@Autowired
	CartService cartService;
	
	@Autowired
	MemberService MemberService;
	
	@RequestMapping(value="/orderpayment.do")
	public String insert (Model model, Locale locale, CartVO cvo,MemberVO mvo,HttpSession session)throws Exception{
		MemberVO member=(MemberVO)session.getAttribute("member");
		int midx = member.getMidx();
		MemberVO mInfo = MemberService.member(midx);
		
		List<CartVO> list = new ArrayList<CartVO>();
		
		//System.out.println("pvoooooo"+pvo.getpBrandKr());
			//바로구매
		if(cvo.getPidx()>0) {
			ProductVO pvo = productService.order(cvo);
			cvo.setpBrandeng(pvo.getpBrandEng());
			cvo.setpNamekr(pvo.getpNameKr());
			cvo.setCnt(pvo.getCnt());
			cvo.setpColor(pvo.getpColor());
			cvo.setpPrice(pvo.getpPrice());
			cvo.setpFile1(pvo.getpFile1());
			list.add(cvo);
			
		}else {
				//장바구니구매
			list = cartService.order(cvo);
		}
		model.addAttribute("list", list);
		model.addAttribute("mInfo", mInfo);
		return "/order/orderpayment";
	}
	
	private int Number(String getpPrice) {
		// TODO Auto-generated method stub
		return 0;
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

	
