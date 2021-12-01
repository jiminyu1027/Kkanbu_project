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
import edu.study.vo.ProductVO;

@RequestMapping(value="/cart")
@Controller
public class CartController {
	
	@Autowired
	CartService CartService;

	@RequestMapping(value="/cart.do", method = RequestMethod.GET)
	public String list(@ModelAttribute CartVO cvo, HttpSession session,Model model,Locale locale, String mId)throws Exception{
		//System.out.println("cart test");
		MemberVO member=(MemberVO)session.getAttribute("member");
		
		if(member != null){
			// ��ٱ������̺� �ִ� �α��� ������ ���û�ǰ ��ü ���
			List<CartVO> list=CartService.list(member.getMidx());
			//System.out.println("LIST"+list);
			
			//��ٱ��� ���̺� �ִ� �α��� ������ ��ü �ݾ�
			int totalPrice = CartService.sum(member.getMidx());
			//System.out.println("total sum"+totalPrice);
			
			//��ۺ�
			int fee = totalPrice >= 50000 ? 0 : 3000;
			
			//�ѱݾ�
			int allSum = CartService.sumMoney(member.getMidx());
			
			model.addAttribute("list",list);
			model.addAttribute("totalPrice",totalPrice);
			model.addAttribute("fee", fee);
			model.addAttribute("allSum", allSum);
			
			return "/cart/cart";
		}else {
			return "redirect:/login.do";
		}
	}
}


	
	
