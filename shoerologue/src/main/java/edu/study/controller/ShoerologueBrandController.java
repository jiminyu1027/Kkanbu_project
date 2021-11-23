package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/category")
@Controller
public class ShoerologueBrandController {
	
	@RequestMapping(value="/brand.do")
	public String brand(Locale locale, Model model)throws Exception {
		
		return "/category/brand";
	}
	
	@RequestMapping(value="brand/nike.do")
	public String nike(Locale locale, Model model)throws Exception {
		
		return "/category/brand/nike";
	}
	
	@RequestMapping(value="brand/adidas.do")
	public String adidas(Locale locale, Model model)throws Exception {
		
		return "/category/brand/adidas";
	}
	
	@RequestMapping(value="brand/newbalance.do")
	public String newbalance(Locale locale, Model model)throws Exception {
		
		return "/category/brand/newbalance";
	}
	
	@RequestMapping(value="brand/converse.do")
	public String converse(Locale locale, Model model)throws Exception {
		
		return "/category/brand/converse";
	}
	
	@RequestMapping(value="brand/vans.do")
	public String vans(Locale locale, Model model)throws Exception {
		
		return "/category/brand/vans";
	}
	
	@RequestMapping(value="brand/reebok.do")
	public String reebok(Locale locale, Model model)throws Exception {
		
		return "/category/brand/reebok";
	}
	
	@RequestMapping(value="brand/nuovo.do")
	public String nuovo(Locale locale, Model model)throws Exception {
		
		return "/category/brand/nuovo";
	}
	
	@RequestMapping(value="brand/jordan.do")
	public String jordan(Locale locale, Model model)throws Exception {
		
		return "/category/brand/jordan";
	}
	
	@RequestMapping(value="brand/puma.do")
	public String puma(Locale locale, Model model)throws Exception {
		
		return "/category/brand/puma";
	}
	
	@RequestMapping(value="brand/hawkins.do")
	public String hawkins(Locale locale, Model model)throws Exception {
		
		return "/category/brand/hawkins";
	}
	
	@RequestMapping(value="brand/ggomoosin.do")
	public String ggomoosin(Locale locale, Model model)throws Exception {
		
		return "/category/brand/ggomoosin";
	}
	
	@RequestMapping(value="brand/bearpaw.do")
	public String bearpaw(Locale locale, Model model)throws Exception {
		
		return "/category/brand/bearpaw";
	}
	
	@RequestMapping(value="brand/rarago.do")
	public String rarago(Locale locale, Model model)throws Exception {
		
		return "/category/brand/rarago";
	}
	
	
}

	
