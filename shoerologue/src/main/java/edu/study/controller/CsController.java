package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/CustomerService")
@Controller
public class CsController {
	
	@RequestMapping(value="/notice.do")
	public String notice(Locale locale,Model model)throws Exception {
		
		return "customerService/notice";
	}
	@RequestMapping(value="/inquiry.do")
	public String inquiry(Locale locale, Model model)throws Exception{
		
		return "customerService/inquiry";
	}
	@RequestMapping(value="/ask.do")
	public String ask(Locale locale,Model model)throws Exception{
		
		return "customerService/ask";
	}
	@RequestMapping(value="/qa.do")
	public String qa(Locale locale,Model model)throws Exception{
		
		return "customerService/qa";
	}
	@RequestMapping(value="/qaAsk.do")
	public String qaAsk(Locale locale, Model model)throws Exception{
		
		return "customerService/qaAsk";
	}
	@RequestMapping(value="/myReview.do")
	public String myReview(Locale locale,Model model)throws Exception{
		
		return "customerService/myReview";
	}
	@RequestMapping(value="/writeReview.do")
	public String writeReview(Locale locale,Model model)throws Exception{
		
		return "customerService/writeReview";
	}
	
	@RequestMapping(value="/event.do")
	public String event(Locale locale,Model model) throws Exception{
		
		return "customerService/event";
	}
	
	@RequestMapping(value="/inquiryDetail.do")
	public String inquiryDetail(Locale locale,Model model)throws Exception{
		
		return "customerService/inquiryDetail";
	}
	@RequestMapping(value="/qaDetail.do")
	public String qaDetail(Locale locale,Model model)throws Exception{
		
		return "customerService/qaDetail";
	}
	@RequestMapping(value="/noticeWrite.do")
	public String noticeWrite(Locale locale,Model model)throws Exception{
		
		return "customerService/noticeWrite";
	}
}

	
