package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/Shoerologue/category/gender")
@Controller
public class ShoerologueGenderController {
	
	@RequestMapping(value="/men/men.do")
	public String men(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/men/men";
	}
	@RequestMapping(value="/men/menSneakers.do")
	public String menSneakers(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/men/menSneakers";
	}
	@RequestMapping(value="/men/menDressShoes.do")
	public String menDressShoes(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/men/menDressShoes";
	}
	@RequestMapping(value="/men/menCasual.do")
	public String menCasual(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/men/menCasual";
	}
	@RequestMapping(value="/men/menSports.do")
	public String menSports(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/men/menSports";
	}
	@RequestMapping(value="/men/menSandle.do")
	public String menSandle(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/men/menSandle";
	}
	@RequestMapping(value="/men/menBoots.do")
	public String menBoots(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/men/menBoots";
	}
	
	
	
	@RequestMapping(value="/women/women.do")
	public String women(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/women/women";
	}
	@RequestMapping(value="/women/womenSneakers.do")
	public String womenSneakers(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/women/womenSneakers";
	}
	@RequestMapping(value="/women/womenDressShoes.do")
	public String womenDressShoes(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/women/womenDressShoes";
	}
	@RequestMapping(value="/women/womenCasual.do")
	public String womenCasual(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/women/womenCasual";
	}
	@RequestMapping(value="/women/womenSports.do")
	public String womenSports(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/women/womenSports";
	}
	@RequestMapping(value="/women/womenSandle.do")
	public String womenSandle(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/women/womenSandle";
	}
	@RequestMapping(value="/women/womenBoots.do")
	public String womenBoots(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/women/womenBoots";
	}
	
	
	
	@RequestMapping(value="/kids/kids.do")
	public String kids(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/kids/kids";
	}
	@RequestMapping(value="/kids/kidsSneakers.do")
	public String kidsSneakers(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/kids/kidsSneakers";
	}
	@RequestMapping(value="/kids/kidsDressShoes.do")
	public String kidsDressShoes(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/kids/kidsDressShoes";
	}
	@RequestMapping(value="/kids/kidsCasual.do")
	public String kidsCasual(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/kids/kidsCasual";
	}
	@RequestMapping(value="/kids/kidsSports.do")
	public String kidsSports(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/kids/kidsSports";
	}
	@RequestMapping(value="/kids/kidsSandle.do")
	public String kidsSandle(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/kids/kidsSandle";
	}
	@RequestMapping(value="/kids/kidsBoots.do")
	public String kidsBoots(Locale locale, Model model)throws Exception {
		
		return "shoerologue/category/gender/kids/kidsBoots";
	}
	
	
	
}

	
