package edu.study.controller;

import java.util.List;
import java.util.Locale;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.MemberService;
import edu.study.vo.MemberVO;

@RequestMapping(value="/Shoerologue")
@Controller
public class MemberController {
	
	@Autowired
	MemberService MemberService;
	
	@RequestMapping(value="/join.do")
	public String join(Locale locale, Model model,MemberVO vo)throws Exception {
		//System.out.println("midx>>>>>>>>>>>"+vo.getMidx());
		//TestMemberservice.insert(vo);	
		
		return "shoerologue/join";
	}
		@RequestMapping(value="/joinAction.do")
		public String joinAction(Locale locale, Model model,MemberVO vo)throws Exception {
			System.out.println("MNAME>>>>>>>>>>>"+vo.getmName());
			System.out.println("MID>>>>>>>>>>"+vo.getmId());
			System.out.println("MPWD>>>>>>>>>>>"+vo.getmPwd());
			System.out.println("MPHONE>>>>>>>>>>>"+vo.getmPhone());
			System.out.println("MEMAIL>>>>>>>>>>>"+vo.getmEmail());
			System.out.println("MADDR>>>>>>>>>>>"+vo.getmAddr());
			
			MemberService.insert(vo);	
			
			return "redirect:/main.do";		
		
	}
	
	@RequestMapping(value="/findId.do")
	public String findId(Locale locale, Model model)throws Exception {
		
		return "shoerologue/findId";
	}
	@RequestMapping(value="/findPwd.do")
	public String findPwd(Locale locale, Model model)throws Exception {
		
		return "shoerologue/findPwd";
	}

	@RequestMapping(value="/leave.do")
	public String leave(Locale locale, Model model)throws Exception {
		
		return "shoerologue/leave";
	}
	
	
}

	
