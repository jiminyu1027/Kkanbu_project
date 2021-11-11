package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.vo.FreeBoardVO;

@RequestMapping(value="/Free")
@Controller
public class FreeController {
	
	@RequestMapping(value="/list.do")
	public String list(Locale locale, Model model) {
		System.out.println("가상경로 Free/list.do로 호출된 메소드 입니다");
		
		String testData = "첫번째 데이터 입니다";
		model.addAttribute("test1",testData);
		
		String url = "/Free/list.do";
		model.addAttribute("url",url);
		
		return "free/list";	//(WEB-INF/views)/free/list.jsp
	}
	
	@RequestMapping(value="/view.do")
	public String view(Locale locale, Model model) {
		
		String url = "/Free/view.do";
		model.addAttribute("url",url);
		
		return "free/view";
	}
	
	@RequestMapping(value="/modify.do", method = RequestMethod.GET)
	public String modify(Locale locale, Model model) {
		
		String url = "/Free/modify.do";
		model.addAttribute("url",url);
		
		
		return "free/modify";
	}
	
	@RequestMapping(value="/modify.do", method = RequestMethod.POST)
	public String modify(Locale locale, Model model, FreeBoardVO vo, String testField) {
		//로직처리
		System.out.println("----------------t1"+vo.getT1());
		System.out.println("----------------t2"+vo.getT2());
		System.out.println("---------testField"+testField); //별도로 매개변수로 선언하여 가져올수있다
		
		return "redirect:/Free/list.do";
	}
}
