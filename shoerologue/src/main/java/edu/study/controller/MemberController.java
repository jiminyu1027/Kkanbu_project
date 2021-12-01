package edu.study.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.MemberService;
import edu.study.vo.MemberVO;

@RequestMapping(value="/member")
@Controller
public class MemberController {
	
	@Autowired
	MemberService MemberService;
	
	@RequestMapping(value="/join.do")
	public String join(Locale locale, Model model,MemberVO vo)throws Exception {
		//System.out.println("midx>>>>>>>>>>>"+vo.getMidx());
		//TestMemberservice.insert(vo);	
		
		return "/member/join";
	}
	
	// 아이디 중복 검사
	@RequestMapping(value="/idCheck.do")
	@ResponseBody
	public int idCheck(MemberVO vo) throws Exception{
		int result = MemberService.idCheck(vo);
		return result;
	}
	
	@RequestMapping(value="/joinAction.do", method = RequestMethod.POST)
	public String joinAction(Locale locale, Model model,MemberVO vo, String mId)throws Exception {
		
		int result = MemberService.idCheck(vo);
		
		try {
			if(result == 1) {
				return "/member/join";
			}else if(result == 0) {
				MemberService.insert(vo);
			}
			// 요기에서~ 입력된 아이디가 존재한다면 -> 다시 회원가입 페이지로 돌아가기 
			// 존재하지 않는다면 -> register
		} catch (Exception e) {
			throw new RuntimeException();
		}
		
		return "redirect:/login.do";		
		
	}
	
	@RequestMapping(value="/findId.do", method = RequestMethod.GET)
	public String findId(Locale locale, Model model,MemberVO vo)throws Exception {
		
		return "/member/findId";
	}
	
	@RequestMapping(value="/findId.do", method = RequestMethod.POST)
	public String findId(Locale locale, Model model,MemberVO vo, HttpServletResponse response)throws Exception {
		
		MemberVO findVO = MemberService.findID(vo);
		
		model.addAttribute("vo",findVO);
		
		return "/member/findIdResult";
	}
	
	@RequestMapping(value="/findPwd.do", method = RequestMethod.GET)
	public String findPwd(Locale locale, Model model,MemberVO vo)throws Exception {
		
		return "/member/findPwd";
	}

	@RequestMapping(value="/findPwd.do", method = RequestMethod.POST)
	public String findPwd(Locale locale, Model model,MemberVO vo, HttpServletResponse response)throws Exception {
		
		MemberVO findVO = MemberService.findPwd(vo);
		
		model.addAttribute("vo",findVO);		
		
		return "/member/findPwdResult";
	}
	
	// 회원 탈퇴 get
	@RequestMapping(value="/leave.do", method = RequestMethod.GET)
	public String leave(Locale locale, Model model) throws Exception{
		
		
		return "/member/leave";
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value="/leave.do", method = RequestMethod.POST)
	public void leave(MemberVO vo, HttpSession session, HttpServletResponse response) throws Exception{
		
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		//세션에 있는 회원 MIDX를 가져와 DB에 MEMBERTABLE에서 조회 
		int midx = member.getMidx();
		
		//서비스에서 midx가 일치하는 user 정보 가져오기
		MemberVO loginUserInfo = MemberService.member(midx);
				
		// vo로 들어오는 비밀번호
		String leavePwd = vo.getmPwd();
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		
		if(!(loginUserInfo.getmPwd().equals(leavePwd))) {
			pw.println("<script>alert(' 비밀번호가 일치하지 않습니다. '); location.href='/shoerologue/member/leave.do'; </script>");
			pw.flush();
		}else {
			MemberService.del(vo);
			session.invalidate();
			pw.println("<script>alert('탈퇴가 정상적으로 이루어졌습니다.\\n그동안 ShoeRologue 를 이용해 주셔서 감사합니다.'); location.href='/shoerologue'; </script>");
			pw.flush();
		}
	}
	
}

	
