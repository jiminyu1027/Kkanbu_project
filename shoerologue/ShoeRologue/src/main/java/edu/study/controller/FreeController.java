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
		System.out.println("������ Free/list.do�� ȣ��� �޼ҵ� �Դϴ�");
		
		String testData = "ù��° ������ �Դϴ�";
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
		//����ó��
		System.out.println("----------------t1"+vo.getT1());
		System.out.println("----------------t2"+vo.getT2());
		System.out.println("---------testField"+testField); //������ �Ű������� �����Ͽ� �����ü��ִ�
		
		return "redirect:/Free/list.do";
	}
}
