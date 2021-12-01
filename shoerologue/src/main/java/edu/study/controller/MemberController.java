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
	
	// ���̵� �ߺ� �˻�
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
			// ��⿡��~ �Էµ� ���̵� �����Ѵٸ� -> �ٽ� ȸ������ �������� ���ư��� 
			// �������� �ʴ´ٸ� -> register
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
	
	// ȸ�� Ż�� get
	@RequestMapping(value="/leave.do", method = RequestMethod.GET)
	public String leave(Locale locale, Model model) throws Exception{
		
		
		return "/member/leave";
	}
	
	// ȸ�� Ż�� post
	@RequestMapping(value="/leave.do", method = RequestMethod.POST)
	public void leave(MemberVO vo, HttpSession session, HttpServletResponse response) throws Exception{
		
		// ���ǿ� �ִ� member�� ������ member������ �־��ݴϴ�.
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		//���ǿ� �ִ� ȸ�� MIDX�� ������ DB�� MEMBERTABLE���� ��ȸ 
		int midx = member.getMidx();
		
		//���񽺿��� midx�� ��ġ�ϴ� user ���� ��������
		MemberVO loginUserInfo = MemberService.member(midx);
				
		// vo�� ������ ��й�ȣ
		String leavePwd = vo.getmPwd();
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		
		if(!(loginUserInfo.getmPwd().equals(leavePwd))) {
			pw.println("<script>alert(' ��й�ȣ�� ��ġ���� �ʽ��ϴ�. '); location.href='/shoerologue/member/leave.do'; </script>");
			pw.flush();
		}else {
			MemberService.del(vo);
			session.invalidate();
			pw.println("<script>alert('Ż�� ���������� �̷�������ϴ�.\\n�׵��� ShoeRologue �� �̿��� �ּż� �����մϴ�.'); location.href='/shoerologue'; </script>");
			pw.flush();
		}
	}
	
}

	
