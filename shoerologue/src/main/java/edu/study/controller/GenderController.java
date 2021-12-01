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
		model.addAttribute("menlist", menlist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmenlist());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men";
	}
	
	@RequestMapping(value="/men/sneakers.do")
	public String menSneakers(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> menlistsneakers = genderService.menListSneakers(pvo,cri);
		model.addAttribute("menlistsneakers", menlistsneakers);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmensneakers());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men/sneakers";
	}
	
	@RequestMapping(value="/men/dressShoes.do")
	public String menDressShoes(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> menlistdressshoes = genderService.menListDressShoes(pvo,cri);
		model.addAttribute("menlistdressshoes", menlistdressshoes);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmendressshoes());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men/dressShoes";
	}
	
	@RequestMapping(value="/men/casual.do")
	public String menCasual(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> menlistcasual = genderService.menListCasual(pvo,cri);
		model.addAttribute("menlistcasual", menlistcasual);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmencasual());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men/casual";
	}
	
	@RequestMapping(value="/men/sports.do")
	public String menSports(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> menlistsports = genderService.menListSports(pvo,cri);
		model.addAttribute("menlistsports", menlistsports);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmensports());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men/sports";
	}
	
	@RequestMapping(value="/men/sandle.do")
	public String menSandle(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> menlistsandle = genderService.menListSandle(pvo,cri);
		model.addAttribute("menlistsandle", menlistsandle);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmensandle());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men/sandle";
	}
	
	@RequestMapping(value="/men/boots.do")
	public String menBoots(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> menlistboots = genderService.menListBoots(pvo,cri);
		model.addAttribute("menlistboots", menlistboots);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countmenboots());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/men/boots";
	}
	
	@RequestMapping(value="/women.do")
	public String women(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> womenlist = genderService.womenList(pvo,cri);
		model.addAttribute("womenlist", womenlist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countwomenlist());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/women";
	}
	
	@RequestMapping(value="/women/sneakers.do")
	public String womenSneakers(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> womenlistsneakers = genderService.womenListSneakers(pvo,cri);
		model.addAttribute("womenlistsneakers", womenlistsneakers);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countwomensneakers());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/women/sneakers";
	}
	
	@RequestMapping(value="/women/dressShoes.do")
	public String womenDressShoes(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> womenlistdressshoes = genderService.womenListDressShoes(pvo,cri);
		model.addAttribute("womenlistdressshoes", womenlistdressshoes);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countwomendressshoes());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/women/dressShoes";
	}
	
	@RequestMapping(value="/women/casual.do")
	public String womenCasual(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> womenlistcasual = genderService.womenListCasual(pvo,cri);
		model.addAttribute("womenlistcasual", womenlistcasual);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countwomencasual());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/women/casual";
	}
	
	@RequestMapping(value="/women/sports.do")
	public String womenSports(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> womenlistsports = genderService.womenListSports(pvo,cri);
		model.addAttribute("womenlistsports", womenlistsports);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countwomensports());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/women/sports";
	}
	
	@RequestMapping(value="/women/sandle.do")
	public String womenSandle(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> womenlistsandle = genderService.womenListSandle(pvo,cri);
		model.addAttribute("womenlistsandle", womenlistsandle);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countwomensandle());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/women/sandle";
	}
	
	@RequestMapping(value="/women/boots.do")
	public String womenBoots(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> womenlistboots = genderService.womenListBoots(pvo,cri);
		model.addAttribute("womenlistboots", womenlistboots);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countwomenboots());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/women/boots";
	}
	
	@RequestMapping(value="/kids.do")
	public String kids(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> kidslist = genderService.kidsList(pvo,cri);
		model.addAttribute("kidslist", kidslist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countkidslist());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/kids";
	}
	
	@RequestMapping(value="/kids/sneakers.do")
	public String kidsSneakers(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> kidslistsneakers = genderService.kidsListSneakers(pvo,cri);
		model.addAttribute("kidslistsneakers", kidslistsneakers);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countkidssneakers());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/kids/sneakers";
	}
	
	@RequestMapping(value="/kids/dressShoes.do")
	public String kidsDressShoes(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> kidslistdressshoes = genderService.kidsListDressShoes(pvo,cri);
		model.addAttribute("kidslistdressshoes", kidslistdressshoes);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countkidsdressshoes());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/kids/dressShoes";
	}
	
	@RequestMapping(value="/kids/casual.do")
	public String kidsCasual(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> kidslistcasual = genderService.kidsListCasual(pvo,cri);
		model.addAttribute("kidslistcasual", kidslistcasual);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countkidscasual());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/kids/casual";
	}
	
	@RequestMapping(value="/kids/sports.do")
	public String kidsSports(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> kidslistsports = genderService.kidsListSports(pvo,cri);
		model.addAttribute("kidslistsports", kidslistsports);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countkidssports());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/kids/sports";
	}
	
	
	@RequestMapping(value="/kids/sandle.do")
	public String kidsSandle(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> kidslistsandle = genderService.kidsListSandle(pvo,cri);
		model.addAttribute("kidslistsandle", kidslistsandle);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countkidssandle());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/kids/sandle";
	}
	
	@RequestMapping(value="/kids/boots.do")
	public String kidsBoots(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> kidslistboots = genderService.kidsListBoots(pvo,cri);
		model.addAttribute("kidslistboots",kidslistboots);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(genderService.countkidsboots());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/gender/kids/boots";
	}
	
	
}

	
