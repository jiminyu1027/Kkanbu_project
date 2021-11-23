package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/customerService")
@Controller
public class CsController {
	
	@RequestMapping(value="/cs.do")
	public String cs(Locale locale,Model model)throws Exception {
		
		return "/customerService/cs";
	}
	
	
	@RequestMapping(value="/notice.do")
	public String notice(Locale locale,Model model)throws Exception {
		
		return "/customerService/notice";
	}
	
	@RequestMapping(value="/writeReview.do")
	public String writeReview(Locale locale,Model model)throws Exception{
		
		return "/customerService/writeReview";
	}
	
	@RequestMapping(value="/event.do")
	public String event(Locale locale,Model model) throws Exception{
		
		return "/customerService/event";
	}
	
	@RequestMapping(value="/qaDetail.do")
	public String qaDetail(Locale locale,Model model)throws Exception{
		
		return "/customerService/qaDetail";
	}
	
}

	
