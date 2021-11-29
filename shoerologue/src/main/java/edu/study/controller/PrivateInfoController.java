package edu.study.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

@RequestMapping(value="/mypage/privateInfo")
@Controller
public class PrivateInfoController {
	
	@Autowired
	MemberService MemberService;
	
	
	@RequestMapping(value="/myInfo.do", method = RequestMethod.GET)
	public String myInfo(Locale locale, Model model, HttpSession session)throws Exception {
		
		// ���ǿ� �ִ� member�� ������ member������ �־��ݴϴ�.
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		//���ǿ� �ִ� ȸ�� MIDX�� ������ DB�� MEMBERTABLE���� ��ȸ 
		int midx = member.getMidx();
		
		//���񽺿��� midx�� ��ġ�ϴ� user ���� ��������
		MemberVO loginUserInfo = MemberService.member(midx);
		
		model.addAttribute("loginUserInfo",loginUserInfo);
				
		return "/mypage/privateInfo/myInfo";
	}

	@RequestMapping(value="/myInfo.do", method = RequestMethod.POST)
	public void myInfo(MemberVO vo, HttpSession session, HttpServletResponse response)throws Exception {

		MemberService.update(vo);
		
		session.invalidate();
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		
		pw.println("<script>alert('���������� ����Ǿ����ϴ�.\\n������ ������ �ٽ� �α��� ���ּ���. '); location.href='/shoerologue/login.do'; </script>");
		pw.flush();
		
	}
	
	
	@RequestMapping(value="/myInfoPwd.do", method = RequestMethod.GET)
	public String myInfoPwd(Locale locale, Model model)throws Exception {
		
		return "/mypage/privateInfo/myInfoPwd";
	}
	
	@RequestMapping(value="/myInfoPwd.do", method = RequestMethod.POST)
	public void myInfoPwd(MemberVO vo, HttpSession session, HttpServletResponse response)throws Exception {
		
		// ���ǿ� �ִ� member�� ������ member������ �־��ݴϴ�.
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		//���ǿ� �ִ� ȸ�� MIDX�� ������ DB�� MEMBERTABLE���� ��ȸ 
		int midx = member.getMidx();
		
		//���񽺿��� midx�� ��ġ�ϴ� user ���� ��������
		MemberVO loginUserInfo = MemberService.member(midx);
				
		// vo�� ������ ��й�ȣ
		String chkPwd = vo.getmPwd();
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		
		if(!(loginUserInfo.getmPwd().equals(chkPwd))) {
			pw.println("<script>alert(' ��й�ȣ�� ��ġ���� �ʽ��ϴ�. '); location.href='/shoerologue/mypage/privateInfo/myInfoPwd.do'; </script>");
			pw.flush();
		}else {
			pw.println("<script> location.href='/shoerologue/mypage/privateInfo/myInfo.do'; </script>");
			pw.flush();
		}	
		
	}
}

	
