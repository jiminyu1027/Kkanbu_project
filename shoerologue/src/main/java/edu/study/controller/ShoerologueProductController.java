package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/Shoerologue/product")
@Controller
public class ShoerologueProductController {
	
	@RequestMapping(value="/product.do")
	public String product(Locale locale, Model model)throws Exception {
		
		return "shoerologue/product/product";
	}
	
}

	
