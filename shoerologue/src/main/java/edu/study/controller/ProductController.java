package edu.study.controller;

import java.lang.reflect.Member;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.domain.Criteria;
import edu.study.domain.Criteria2;
import edu.study.domain.PageMaker;
import edu.study.domain.PageMaker2;
import edu.study.service.ProductService;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;

@RequestMapping(value="/")
@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/product/product.do")
	public String product(Locale locale, Model model,int pidx)throws Exception {
			
				ProductVO pvo = productService.detail(pidx);
				model.addAttribute("pvo", pvo);
			
				
//		List<ProductVO> list = productService.hotDealList();
//		
//		model.addAttribute("list", list);
		
		
		return "/product/product";
	}	
	
	@RequestMapping(value="/cart/cart.do",method=RequestMethod.GET)
	public String insert(Model model, ProductVO pvo,HttpSession session)throws Exception {
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		return "/shoerologue/cart/cart";
	}
	
	@RequestMapping(value="/cart/cart.do",method=RequestMethod.POST)
	public String insert(Locale locale, Model model, ProductVO pvo,HttpSession session)throws Exception {
			 
		MemberVO member = (MemberVO)session.getAttribute("member");
		pvo.setMidx(member.getMidx());
		
			productService.insert(pvo);
			//System.out.println("PIDX::"+pvo.getPidx());
			
		
		return "redirect:/cart/cart.do";
	}
	
	@RequestMapping(value="/product/productInsert.do",method=RequestMethod.GET)
	public String productInsert(Model model,ProductVO pvo,HttpSession session)throws Exception {
			
		
		return "/product/productInsert";
	}
	
	@RequestMapping(value="/product/pdAllList.do",method=RequestMethod.POST)
	public String productInsert(Locale locale, Model model,ProductVO pvo,HttpSession session)throws Exception {
			
		MemberVO member = (MemberVO)session.getAttribute("member");
		pvo.setMidx(member.getMidx());
		
			productService.productInsert(pvo);
				
		return "redirect:/shoerologue.do";
	}
	
	@RequestMapping(value="/product/pdAllList.do")
	public String pdAllList(Locale locale, Model model,ProductVO pvo, Criteria2 cri)throws Exception {
			
		List<ProductVO> pdAllList = productService.pdAllList(pvo,cri);
		model.addAttribute("pdAllList", pdAllList);
		
		PageMaker2 pageMaker2 = new PageMaker2();
		pageMaker2.setCri(cri);;
		pageMaker2.setTotalCount(productService.countAllList());
		
		model.addAttribute("pageMaker2", pageMaker2);
		
		
		return "/product/pdAllList";
	}
	
	
}

	
