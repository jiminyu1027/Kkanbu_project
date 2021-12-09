package edu.study.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.study.vo.ProductVO;

@RequestMapping(value="/admin")
@Controller
public class AdminController {

	@Autowired
	edu.study.service.ProductService ProductService;
	
	@RequestMapping(value="/inquiryAsk.do")
	public String ask(Locale locale,Model model)throws Exception{
		
		return "/admin/inquiryAsk";
	}
	
	@RequestMapping(value="/noticeWrite.do")
	public String noticeWrite(Locale locale,Model model)throws Exception{
		
		return "/admin/noticeWrite";
	}
	
	@RequestMapping(value="/qaAsk.do")
	public String qaAsk(Locale locale, Model model,int pidx)throws Exception{
		
		ProductVO pvo = ProductService.detail(pidx);
		
		model.addAttribute("pvo",pvo);
		
		return "/admin/qaAsk";
	}
}
