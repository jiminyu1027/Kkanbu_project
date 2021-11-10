package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/Shoerologue/category")
@Controller
public class ShoerologueBrandController {
	
	@RequestMapping(value="/brand.do")
	public String brand(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand";
	}
	
	@RequestMapping(value="brand/nike.do")
	public String nike(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/nike";
	}
	
	@RequestMapping(value="brand/adidas.do")
	public String adidas(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/adidas";
	}
	
	@RequestMapping(value="brand/newbalance.do")
	public String newbalance(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/newbalance";
	}
	
	@RequestMapping(value="brand/converse.do")
	public String converse(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/converse";
	}
	
	@RequestMapping(value="brand/vans.do")
	public String vans(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/vans";
	}
	
	@RequestMapping(value="brand/reebok.do")
	public String reebok(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/reebok";
	}
	
	@RequestMapping(value="brand/nuovo.do")
	public String nuovo(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/nuovo";
	}
	
	@RequestMapping(value="brand/jordan.do")
	public String jordan(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/jordan";
	}
	
	@RequestMapping(value="brand/puma.do")
	public String puma(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/puma";
	}
	
	@RequestMapping(value="brand/hawkins.do")
	public String hawkins(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/brand/hawkins";
	}
	
	
}

	
