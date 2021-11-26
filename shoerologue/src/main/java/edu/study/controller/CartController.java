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

	@RequestMapping(value="/cart.do", method = RequestMethod.GET)
	public String list(@ModelAttribute CartVO cvo, HttpSession session)throws Exception{
		
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member==null) {
			return "redirect:/login.do";
		}
		cvo.setmId(member.getmId());
		CartService.insert(cvo);
		return "/cart/cart";
	}

	@RequestMapping(value="/cart.do", method = RequestMethod.POST)
	public String list(HttpSession session, ModelAndView mav, Model model, String mId) throws Exception {
		//Map<String, Object> map=new HashMap<>();
		
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member != null){
			// 장바구니테이블에 있는 로그인 유저의 전체 목록
			List<CartVO> list=CartService.list(mId);
			
			//장바구니 테이블에 있는 로그인 유저의 전체 금액
			double totalPrice = 0.0;
			
			
			
			model.addAttribute("list",list);
			model.addAttribute("totalPrice",totalPrice);
			
			return "/cart/cart";
		}else {
			return "redirect:/login.do";
		}
	}
}

	
	
