package edu.study.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.CartService;
import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;

@RequestMapping(value="/cart")
@Controller
public class CartController {
	
	@Autowired
	CartService CartService;
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@RequestMapping(value="/cart.do")
	public String list(HttpSession session, Model model) throws Exception{
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		List<CartVO> list = CartService.list(member.getMidx());
		model.addAttribute("list", list);
		
		//String mId=member.getmId();
		//System.out.println("memberid::::"+mId);
		
		//List<CartVO> list=CartService.lst
		
		//model.addAttribute("list", list);
		return "/cart/cart";
	}
	
	@ResponseBody
	@RequestMapping(value="/cart.do", method=RequestMethod.POST)
	public int del(HttpSession session, @RequestParam(value="chBox[]") List<String>chArr, CartVO cvo) throws Exception{
		logger.info("del");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String mId = member.getmId();
		
		int result=0;
		int ctidx=0;
		
		if(member != null) {
			cvo.setmId(mId);
			
			for(String i : chArr) {
				ctidx = Integer.parseInt(i);
				cvo.setCtidx(ctidx);
				CartService.del(cvo);
			}
			result=1;
		}
		return result;
	}

//	@RequestMapping("insert.do")
//	public String insert(@ModelAttribute CartVO cvo, HttpSession session)throws Exception{
//		
//		String mId=(String)session.getAttribute("mId");
//		if(mId==null) {
//			return "redirect:/login.do";
//		}
//		cvo.setmId(mId);
//		CartService.insert(cvo);
//			return "redirect:/cart/cart.do";
//	}
//
//	@RequestMapping("list.do")
//	public ModelAndView list(HttpSession session, ModelAndView mav) {
//		Map<String, Object> map=new HashMap<>();
//		String mId=(String)session.getAttribute("mId");
//		if(mId != null) {
//			List<CartVO> list=CartService.listCart(mId);
//			int sumMoney=CartService.sumMoney(mId);
//			int fee=sumMoney >= 50000 ? 0 : 3000;
//			
//			map.put("sumMoney", sumMoney);
//			map.put("fee", fee);
//			map.put("sum", sumMoney+fee);
//			map.put("list", list);
//			map.put("count", list.size());
//			
//			mav.setViewName("/cart/cart");
//			mav.addObject("map",map);
//			
//			return mav;
//			}else {
//				return new ModelAndView("login","",null);
//			}
//	}
	
}

	
