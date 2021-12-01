package edu.study.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.study.service.ProductService;
import edu.study.vo.ProductVO;

@RequestMapping(value="/product")
@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/product.do")
	public String product(Locale locale, Model model,int pidx)throws Exception {
			
				ProductVO pvo = productService.detail(pidx);
				model.addAttribute("pvo", pvo);
			
				
//		List<ProductVO> list = productService.hotDealList();
//		
//		model.addAttribute("list", list);
		
		
		return "/product/product";
	}
	
	
	
	
}

	
