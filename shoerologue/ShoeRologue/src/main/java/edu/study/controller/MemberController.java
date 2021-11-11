package edu.study.controller;

import java.util.ArrayList;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.vo.MemberVO;

@RequestMapping(value="/Member")
@Controller
public class MemberController {
	
	@RequestMapping(value="/list.do")
	public String list(Locale locale, Model model) {
		
		ArrayList<MemberVO> alist = new ArrayList<MemberVO>();
		
		MemberVO vo1 = new MemberVO();
		vo1.setName("ȫ�浿");
		vo1.setAge("20");
		vo1.setAddr("����");
		alist.add(vo1);
		
		MemberVO vo2 = new MemberVO();
		vo2.setName("ȫ���");
		vo2.setAge("66");
		vo2.setAddr("����");
		alist.add(vo2);
		
		MemberVO vo3 = new MemberVO();
		vo3.setName("ȫ���");
		vo3.setAge("14");
		vo3.setAddr("�λ�");
		alist.add(vo3);
		
		MemberVO vo4 = new MemberVO();
		vo4.setName("ȫ����");
		vo4.setAge("24");
		vo4.setAddr("����");
		alist.add(vo4);
		
		MemberVO vo5 = new MemberVO();
		vo5.setName("ȫ���");
		vo5.setAge("31");
		vo5.setAddr("����");
		alist.add(vo5);
	
		model.addAttribute("alist",alist);
		
		return "member/list";
	}
	
	@RequestMapping(value="/view.do")
	public String view(Locale locale, Model model) {
		return "member/view";
	}
	
	@RequestMapping(value="/modify.do", method = RequestMethod.GET)
	public String modify(Locale locale, Model model) {
		return "member/modify";
	}
	
	@RequestMapping(value="/modify.do", method = RequestMethod.POST)
	public String modify(Locale locale, Model model, String name, String age, String addr) {
		
		return "redirect:/Member/view.do";
	}
}
