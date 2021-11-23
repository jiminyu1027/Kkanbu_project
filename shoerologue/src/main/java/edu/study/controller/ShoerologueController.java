//package edu.study.controller;
//
//import java.util.List;
//import java.util.Locale;
//
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.apache.ibatis.session.SqlSession;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import edu.study.service.MemberService;
//import edu.study.vo.MemberVO;
//
//@RequestMapping(value="/shoerologue")
//@Controller
//public class ShoerologueController {
//	
//	@Autowired
//	MemberService MemberService;
//
//	@RequestMapping(value="/login.do", method=RequestMethod.GET)
//	public String login(Locale locale, Model model, MemberVO vo)throws Exception {
//		model.addAttribute("vo", vo);
//	
//		return "login";
//	}
//	
//	@RequestMapping(value="/login.do", method=RequestMethod.POST)
//	public String login(Locale locale, Model model, HttpSession session,  MemberVO vo, RedirectAttributes rttr) throws Exception{
//		
//			MemberVO login = MemberService.login(vo);
//			String mName = (String)session.getAttribute("mName");
//			String master = (String) session.getAttribute("master");
//			//System.out.println("이름33!!"+mName);
//			if(login == null) {
//				session.setAttribute("member", null);
//				rttr.addFlashAttribute("msg", false);
//				//System.out.println("이름22!!"+mName);
//				return "redirect:/Shoerologue/login.do";
//			}else {
//				
//				mName= login.getmName();
//				master = login.getMaster();
//				
//				session.setAttribute("mName", mName);
//				session.setAttribute("master", master);
//				
//				//System.out.println("이름!!"+mName);
//				
//				session.setAttribute("member", login);
//				
//				return "redirect:/main.do";
//			}
//		}
//}
//
//	
