package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/Shoerologue/category/brand")
@Controller
public class ShoerologueBrandController {
	
	@RequestMapping(value="/brand.do")
	public String brand(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/brand";
	}
	@RequestMapping(value="/brandNike.do")
	public String brandNike(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/brandNike";
	}
	@RequestMapping(value="/brandNike2.do")
	public String brandNike2(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/brandNike2";
	}
	
	
}

	
