package edu.study.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.study.service.ProductService;
import edu.study.vo.ProductVO;

@RequestMapping(value="/category/gender")
@Controller
public class ShoerologueGenderController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/men.do")
	public String men(Locale locale, Model model)throws Exception {
		
		List<ProductVO> menlist = productService.menList();
		model.addAttribute("menlist", menlist);
		
		return "/category/gender/men";
	}
	@RequestMapping(value="/men/sneakers.do")
	public String menSneakers(Locale locale, Model model)throws Exception {
		
		return "/category/gender/men/sneakers";
	}
	@RequestMapping(value="/men/dressShoes.do")
	public String menDressShoes(Locale locale, Model model)throws Exception {
		
		return "/category/gender/men/dressShoes";
	}
	@RequestMapping(value="/men/casual.do")
	public String menCasual(Locale locale, Model model)throws Exception {
		
		return "/category/gender/men/casual";
	}
	@RequestMapping(value="/men/sports.do")
	public String menSports(Locale locale, Model model)throws Exception {
		
		return "/category/gender/men/sports";
	}
	@RequestMapping(value="/men/sandle.do")
	public String menSandle(Locale locale, Model model)throws Exception {
		
		return "/category/gender/men/sandle";
	}
	@RequestMapping(value="/men/boots.do")
	public String menBoots(Locale locale, Model model)throws Exception {
		
		return "/category/gender/men/boots";
	}
	
	
	
	@RequestMapping(value="/women.do")
	public String women(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlist = productService.womenList();
		model.addAttribute("womenlist", womenlist);
		
		return "/category/gender/women";
	}
	@RequestMapping(value="/women/sneakers.do")
	public String womenSneakers(Locale locale, Model model)throws Exception {
		
		return "/category/gender/women/sneakers";
	}
	@RequestMapping(value="/women/dressShoes.do")
	public String womenDressShoes(Locale locale, Model model)throws Exception {
		
		return "/category/gender/women/dressShoes";
	}
	@RequestMapping(value="/women/casual.do")
	public String womenCasual(Locale locale, Model model)throws Exception {
		
		return "/category/gender/women/casual";
	}
	@RequestMapping(value="/women/sports.do")
	public String womenSports(Locale locale, Model model)throws Exception {
		
		return "/category/gender/women/sports";
	}
	@RequestMapping(value="/women/sandle.do")
	public String womenSandle(Locale locale, Model model)throws Exception {
		
		return "/category/gender/women/sandle";
	}
	@RequestMapping(value="/women/boots.do")
	public String womenBoots(Locale locale, Model model)throws Exception {
		
		return "/category/gender/women/boots";
	}
	
	
	
	@RequestMapping(value="/kids.do")
	public String kids(Locale locale, Model model)throws Exception {
		
		List<ProductVO> kidslist = productService.kidsList();
		model.addAttribute("kidslist", kidslist);
		
		return "/category/gender/kids";
	}
	@RequestMapping(value="/kids/sneakers.do")
	public String kidsSneakers(Locale locale, Model model)throws Exception {
		
		return "/category/gender/kids/sneakers";
	}
	@RequestMapping(value="/kids/dressShoes.do")
	public String kidsDressShoes(Locale locale, Model model)throws Exception {
		
		return "/category/gender/kids/dressShoes";
	}
	@RequestMapping(value="/kids/casual.do")
	public String kidsCasual(Locale locale, Model model)throws Exception {
		
		return "/category/gender/kids/casual";
	}
	@RequestMapping(value="/kids/sports.do")
	public String kidsSports(Locale locale, Model model)throws Exception {
		
		return "/category/gender/kids/sports";
	}
	@RequestMapping(value="/kids/sandle.do")
	public String kidsSandle(Locale locale, Model model)throws Exception {
		
		return "/category/gender/kids/sandle";
	}
	@RequestMapping(value="/kids/boots.do")
	public String kidsBoots(Locale locale, Model model)throws Exception {
		
		return "/category/gender/kids/boots";
	}
	
	
	
}

	
