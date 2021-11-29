package edu.study.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.study.service.GenderService;
import edu.study.vo.ProductVO;
import edu.study.domain.Criteria;
import edu.study.domain.PageMaker;
import edu.study.domain.Paging;

@RequestMapping(value="/category/gender")
@Controller
public class GenderController {
	
	@Autowired
	GenderService genderService;
	
	@RequestMapping(value="/men.do")
	public String men(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> menlist = genderService.menList(pvo,cri);
		model.addAttribute("menlist", genderService.menList(pvo, cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmenlist());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men";
	}
	
	
	
	@RequestMapping(value="/men/sneakers.do")
	public String menSneakers(Locale locale, Model model)throws Exception {
		
		List<ProductVO> menlistsneakers = genderService.menListSneakers();
		model.addAttribute("menlistsneakers", menlistsneakers);
		
		return "/category/gender/men/sneakers";
	}
	@RequestMapping(value="/men/dressShoes.do")
	public String menDressShoes(Locale locale, Model model)throws Exception {
		
		List<ProductVO> menlistdressshoes = genderService.menListDressShoes();
		model.addAttribute("menlistdressshoes", menlistdressshoes);
		
		return "/category/gender/men/dressShoes";
	}
	@RequestMapping(value="/men/casual.do")
	public String menCasual(Locale locale, Model model)throws Exception {
		
		List<ProductVO> menlistcasual = genderService.menListCasual();
		model.addAttribute("menlistcasual", menlistcasual);
		
		return "/category/gender/men/casual";
	}
	@RequestMapping(value="/men/sports.do")
	public String menSports(Locale locale, Model model)throws Exception {
		
		List<ProductVO> menlistsports = genderService.menListSports();
		model.addAttribute("menlistsports", menlistsports);
		
		return "/category/gender/men/sports";
	}
	@RequestMapping(value="/men/sandle.do")
	public String menSandle(Locale locale, Model model)throws Exception {
		
		List<ProductVO> menlistsandle = genderService.menListSandle();
		model.addAttribute("menlistsandle", menlistsandle);
		
		return "/category/gender/men/sandle";
	}
	@RequestMapping(value="/men/boots.do")
	public String menBoots(Locale locale, Model model)throws Exception {
		
		List<ProductVO> menlistboots = genderService.menListBoots();
		model.addAttribute("menlistboots", menlistboots);
		
		return "/category/gender/men/boots";
	}
	
	
	
	
	@RequestMapping(value="/women.do")
	public String women(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlist = genderService.womenList();
		model.addAttribute("womenlist", womenlist);
		
		return "/category/gender/women";
	}
	
	@RequestMapping(value="/women/sneakers.do")
	public String womenSneakers(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlistsneakers = genderService.womenListSneakers();
		model.addAttribute("womenlistsneakers", womenlistsneakers);
		
		return "/category/gender/women/sneakers";
	}
	
	@RequestMapping(value="/women/dressShoes.do")
	public String womenDressShoes(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlistdressshoes = genderService.womenListDressShoes();
		model.addAttribute("womenlistdressshoes", womenlistdressshoes);
		
		return "/category/gender/women/dressShoes";
	}
	
	@RequestMapping(value="/women/casual.do")
	public String womenCasual(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlistcasual = genderService.womenListCasual();
		model.addAttribute("womenlistcasual", womenlistcasual);
		
		return "/category/gender/women/casual";
	}
	
	@RequestMapping(value="/women/sports.do")
	public String womenSports(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlistsports = genderService.womenListSports();
		model.addAttribute("womenlistsports", womenlistsports);
		
		return "/category/gender/women/sports";
	}
	
	@RequestMapping(value="/women/sandle.do")
	public String womenSandle(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlistsandle = genderService.womenListSandle();
		model.addAttribute("womenlistsandle", womenlistsandle);
		
		return "/category/gender/women/sandle";
	}
	
	@RequestMapping(value="/women/boots.do")
	public String womenBoots(Locale locale, Model model)throws Exception {
		
		List<ProductVO> womenlistboots = genderService.womenListBoots();
		model.addAttribute("womenlistboots", womenlistboots);
		
		return "/category/gender/women/boots";
	}
	
	
	
	
	
	@RequestMapping(value="/kids.do")
	public String kids(Locale locale, Model model)throws Exception {
	
		List<ProductVO> kidslist = genderService.kidsList();
		model.addAttribute("kidslist", kidslist);
		
		
		
		return "/category/gender/kids";
	}
	
	@RequestMapping(value="/kids/sneakers.do")
	public String kidsSneakers(Locale locale, Model model)throws Exception {
		
		List<ProductVO> kidslistsneakers = genderService.kidsListSneakers();
		model.addAttribute("kidslistsneakers", kidslistsneakers);
		
		return "/category/gender/kids/sneakers";
	}
	
	@RequestMapping(value="/kids/dressShoes.do")
	public String kidsDressShoes(Locale locale, Model model)throws Exception {
		
		List<ProductVO> kidslistdressshoes = genderService.kidsListDressShoes();
		model.addAttribute("kidslistdressshoes", kidslistdressshoes);
		
		return "/category/gender/kids/dressShoes";
	}
	
	@RequestMapping(value="/kids/casual.do")
	public String kidsCasual(Locale locale, Model model)throws Exception {
		
		List<ProductVO> kidslistcasual = genderService.kidsListCasual();
		model.addAttribute("kidslistcasual", kidslistcasual);
		
		return "/category/gender/kids/casual";
	}
	
	@RequestMapping(value="/kids/sports.do")
	public String kidsSports(Locale locale, Model model)throws Exception {
		
		List<ProductVO> kidslistsports = genderService.kidsListSports();
		model.addAttribute("kidslistsports", kidslistsports);
		
		return "/category/gender/kids/sports";
	}
	
	@RequestMapping(value="/kids/sandle.do")
	public String kidsSandle(Locale locale, Model model)throws Exception {
		
		List<ProductVO> kidslistsandle = genderService.kidsListSandle();
		model.addAttribute("kidslistsandle", kidslistsandle);
		
		return "/category/gender/kids/sandle";
	}
	
	@RequestMapping(value="/kids/boots.do")
	public String kidsBoots(Locale locale, Model model)throws Exception {
		
		List<ProductVO> kidslistboots = genderService.kidsListBoots();
		model.addAttribute("kidslistboots", kidslistboots);
		
		return "/category/gender/kids/boots";
	}
	
	
	
}

	
