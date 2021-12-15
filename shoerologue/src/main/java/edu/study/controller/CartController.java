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
import edu.study.service.MemberService;
import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;
import edu.study.vo.OrderVO;
import edu.study.vo.ProductVO;

@RequestMapping(value="/cart")
@Controller
public class CartController {
	
	@Autowired
	CartService CartService;
	

	@RequestMapping(value="/cart.do", method = RequestMethod.GET)
	public String list(CartVO cvo, HttpSession session,Model model,Locale locale)throws Exception{
		//System.out.println("cart test");
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member != null){
			int midx = member.getMidx();
			// 장바구니테이블에 있는 로그인 유저의 선택상품 전체 목록
			List<CartVO> list=CartService.list(midx);
			//System.out.println("LIST"+list);
			
			//장바구니 테이블에 있는 로그인 유저의 전체 금액
			int totalPrice = CartService.sum(midx);
			//System.out.println("total sum"+totalPrice);
			
			//배송비
			int fee = totalPrice >= 50000 ? 0 : 3000;
			 
			//총금액
			int allSum = CartService.sumMoney(midx);
			
			model.addAttribute("list",list);
			model.addAttribute("totalPrice",totalPrice);
			model.addAttribute("fee", fee);
			model.addAttribute("allSum", allSum);
			
			return "/cart/cart";
		}else {
			return "redirect:/login.do";
		}
	}
	
	
	@RequestMapping(value="/update.do")
	@ResponseBody
	public void update(Locale locale, Model model,CartVO cvo) throws Exception{
		CartService.update(cvo);
	}
	
	@RequestMapping(value="/del.do")
	public String del(Locale locale, Model model,HttpSession session, int ctidx) throws Exception{
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		CartService.del(ctidx);
		
		return"redirect:/cart/cart.do";
	}
	
	@RequestMapping(value="/cartdelAll.do")
	public String delAll(Locale locale, Model model,HttpSession session) throws Exception{
		MemberVO member=(MemberVO)session.getAttribute("member");
		int midx = (int)member.getMidx();
		
		CartService.delAll(midx);
		
			return"redirect:/cart/cart.do";
	}
	
	
	
}


	
	
