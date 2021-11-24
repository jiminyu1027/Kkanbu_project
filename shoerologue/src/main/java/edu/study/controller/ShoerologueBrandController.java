package edu.study.controller;

import java.io.File;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.study.service.ProductService;
import edu.study.vo.ProductVO;

@RequestMapping(value="/category")
@Controller
public class ShoerologueBrandController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/brand.do")
	public String brand(Locale locale, Model model)throws Exception {
		
		return "/category/brand";
	}
	
	@RequestMapping(value="brand/nike.do")
	public String nike(Locale locale, Model model)throws Exception {
		
		List<ProductVO> nikelist = productService.nikeList();
		model.addAttribute("nikelist", nikelist);
		
		return "/category/brand/nike";
	}
	
	@RequestMapping(value="brand/adidas.do")
	public String adidas(Locale locale, Model model)throws Exception {
		
		List<ProductVO> adidaslist = productService.adidasList();
		model.addAttribute("adidaslist", adidaslist);
		
		return "/category/brand/adidas";
	}
	
	@RequestMapping(value="brand/newbalance.do")
	public String newbalance(Locale locale, Model model)throws Exception {
		
		List<ProductVO> newbalancelist = productService.newbalanceList();
		model.addAttribute("newbalancelist", newbalancelist);
		
		return "/category/brand/newbalance";
	}
	
	@RequestMapping(value="brand/converse.do")
	public String converse(Locale locale, Model model)throws Exception {
		
		List<ProductVO> converselist = productService.converseList();
		model.addAttribute("converselist", converselist);
		
		return "/category/brand/converse";
	}
	
	@RequestMapping(value="brand/vans.do")
	public String vans(Locale locale, Model model)throws Exception {
		
		List<ProductVO> vanslist = productService.vansList();
		model.addAttribute("vanslist", vanslist);
		
		return "/category/brand/vans";
	}
	
	@RequestMapping(value="brand/reebok.do")
	public String reebok(Locale locale, Model model)throws Exception {
		
		List<ProductVO> reeboklist = productService.reebokList();
		model.addAttribute("reeboklist", reeboklist);
		
		return "/category/brand/reebok";
	}
	
	@RequestMapping(value="brand/nuovo.do")
	public String nuovo(Locale locale, Model model)throws Exception {
		
		List<ProductVO> nuovolist = productService.nuovoList();
		model.addAttribute("nuovolist", nuovolist);
		
		return "/category/brand/nuovo";
	}
	
	@RequestMapping(value="brand/jordan.do")
	public String jordan(Locale locale, Model model)throws Exception {
		
		List<ProductVO> jordanlist = productService.jordanList();
		model.addAttribute("jordanlist", jordanlist);
		
		return "/category/brand/jordan";
	}
	
	@RequestMapping(value="brand/puma.do")
	public String puma(Locale locale, Model model)throws Exception {
		
		List<ProductVO> pumalist = productService.pumaList();
		model.addAttribute("pumalist", pumalist);
		
		return "/category/brand/puma";
	}
	
	@RequestMapping(value="brand/hawkins.do")
	public String hawkins(Locale locale, Model model)throws Exception {
		
		List<ProductVO> hawkinslist = productService.hawkinsList();
		model.addAttribute("hawkinslist", hawkinslist);
		
		return "/category/brand/hawkins";
	}
	
	@RequestMapping(value="brand/ggomoosin.do")
	public String ggomoosin(Locale locale, Model model)throws Exception {
		
		List<ProductVO> ggomoosinlist = productService.ggomoosinList();
		model.addAttribute("ggomoosinlist", ggomoosinlist);
		
		return "/category/brand/ggomoosin";
	}
	
	@RequestMapping(value="brand/bearpaw.do")
	public String bearpaw(Locale locale, Model model)throws Exception {
		
		List<ProductVO> bearpawlist = productService.bearpawList();
		model.addAttribute("bearpawlist", bearpawlist);
		
		return "/category/brand/bearpaw";
	}
	
	@RequestMapping(value="brand/rarago.do")
	public String rarago(Locale locale, Model model)throws Exception {
		
		List<ProductVO> raragolist = productService.raragoList();
		model.addAttribute("raragolist", raragolist);
		
		return "/category/brand/rarago";
	}
	
	
}

	
