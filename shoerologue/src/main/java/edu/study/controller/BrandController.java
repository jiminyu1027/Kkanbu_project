package edu.study.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.study.domain.Criteria;
import edu.study.domain.PageMaker;
import edu.study.service.BrandService;
import edu.study.vo.ProductVO;

@RequestMapping(value="/category")
@Controller
public class BrandController {
	
	@Autowired
	BrandService brandService;
	
	@RequestMapping(value="/brand.do")
	public String brand(Locale locale, Model model)throws Exception {
		
		return "/category/brand";
	}
	
	@RequestMapping(value="/test.do")
	public String test(Locale locale, Model model)throws Exception {
		
		return "/category/test";
	}
	
	@RequestMapping(value="brand/nike.do")
	public String nike(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> nikelist = brandService.nikeList(pvo,cri);
		model.addAttribute("nikelist", nikelist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countnike());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/nike";
	}
	
	@RequestMapping(value="brand/adidas.do")
	public String adidas(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> adidaslist = brandService.adidasList(pvo,cri);
		model.addAttribute("adidaslist", adidaslist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countadidas());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/adidas";
	}
	
	@RequestMapping(value="brand/newbalance.do")
	public String newbalance(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> newbalancelist = brandService.newbalanceList(pvo,cri);
		model.addAttribute("newbalancelist", newbalancelist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countnewbalance());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/newbalance";
	}
	
	@RequestMapping(value="brand/converse.do")
	public String converse(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> converselist = brandService.converseList(pvo,cri);
		model.addAttribute("converselist", converselist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countconverse());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/converse";
	}
	
	@RequestMapping(value="brand/vans.do")
	public String vans(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> vanslist = brandService.vansList(pvo,cri);
		model.addAttribute("vanslist", vanslist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countvans());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/vans";
	}
	
	@RequestMapping(value="brand/reebok.do")
	public String reebok(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> reeboklist = brandService.reebokList(pvo,cri);
		model.addAttribute("reeboklist", reeboklist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countreebok());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/reebok";
	}
	
	@RequestMapping(value="brand/nuovo.do")
	public String nuovo(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> nuovolist = brandService.nuovoList(pvo,cri);
		model.addAttribute("nuovolist", nuovolist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countnuovo());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/nuovo";
	}
	
	@RequestMapping(value="brand/jordan.do")
	public String jordan(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> jordanlist = brandService.jordanList(pvo,cri);
		model.addAttribute("jordanlist", jordanlist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countjordan());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/jordan";
	}
	
	@RequestMapping(value="brand/puma.do")
	public String puma(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> pumalist = brandService.pumaList(pvo,cri);
		model.addAttribute("pumalist", pumalist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countpuma());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/puma";
	}
	
	@RequestMapping(value="brand/hawkins.do")
	public String hawkins(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> hawkinslist = brandService.hawkinsList(pvo,cri);
		model.addAttribute("hawkinslist", hawkinslist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.counthawkins());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/hawkins";
	}
	
	@RequestMapping(value="brand/ggomoosin.do")
	public String ggomoosin(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> ggomoosinlist = brandService.ggomoosinList(pvo,cri);
		model.addAttribute("ggomoosinlist", ggomoosinlist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countggomoosin());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/ggomoosin";
	}
	
	@RequestMapping(value="brand/bearpaw.do")
	public String bearpaw(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> bearpawlist = brandService.bearpawList(pvo,cri);
		model.addAttribute("bearpawlist", bearpawlist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countbearpaw());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/bearpaw";
	}
	
	@RequestMapping(value="brand/rarago.do")
	public String rarago(Locale locale, Model model,ProductVO pvo, Criteria cri)throws Exception {
		
		List<ProductVO> raragolist = brandService.raragoList(pvo,cri);
		model.addAttribute("raragolist", raragolist);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(brandService.countrarago());
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/category/brand/rarago";
	}
	
	
}

	
