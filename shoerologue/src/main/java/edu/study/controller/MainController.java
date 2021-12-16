package edu.study.controller;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.HotProductService;
import edu.study.service.MemberService;
import edu.study.service.ProductService;
import edu.study.vo.HotProductVO;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	@Autowired
	ProductService productService;
	@Autowired
	HotProductService hotProductService;
	@Autowired
	MemberService MemberService;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {

			List<ProductVO> plist = productService.list();
			//System.out.println("plist"+plist);
			model.addAttribute("plist", plist);			
			
			List<HotProductVO> hlist = hotProductService.hlist();
			//System.out.println("hlist"+hlist);
			model.addAttribute("hlist", hlist);
		
		return "main"; // WEB-INF/views/shoerologue/main.jsp
	}
	
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(Locale locale, Model model, MemberVO vo)throws Exception {
		model.addAttribute("vo", vo);
	
		return "login";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public void login(Locale locale, Model model, HttpSession session,  MemberVO vo, RedirectAttributes rttr, HttpServletResponse response) throws Exception{
		
			MemberVO login = MemberService.login(vo);
			String mName = (String)session.getAttribute("mName");
			String master = (String) session.getAttribute("master");
			//System.out.println("이름33!!"+mName);
			if(login == null) {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", false);
				//System.out.println("이름22!!"+mName);
				
				PrintWriter pw = response.getWriter();
				response.setContentType("text/html; charset=UTF-8");
				
				pw.println("<script>alert(' 아이디 혹은 비밀번호가 일치하지 않습니다. '); location.href='/shoerologue/login.do'; </script>");
				pw.flush();
				
				
			}else {
				
				mName= login.getmName();
				master = login.getMaster();
				
				session.setAttribute("mName", mName);
				session.setAttribute("master", master);
				
				//System.out.println("이름!!"+mName);
				
				session.setAttribute("member", login);
				
				PrintWriter pw = response.getWriter();
				response.setContentType("text/html; charset=UTF-8");
				
				pw.println("<script>  location.href='/shoerologue'; </script>");
				pw.flush();
			}
		}
	
	 /* 로그아웃 */
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        
        logger.info("logoutMainGET메서드 진입");
        
        HttpSession session = request.getSession();
        
        session.invalidate();
        
        return "redirect:/";        
        
    }
	
	
	
	
}
