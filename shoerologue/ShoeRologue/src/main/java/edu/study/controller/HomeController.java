package edu.study.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main"; // WEB-INF/views/main.jsp
	}
	@RequestMapping(value="/main.do")
	public String main(Locale locale, Model model) {
		
		return "main";
	}
	//FreeController 생성하기
	
	/*
	 1.list 관련 메소드가 존재한다
	 -가상경로는 /free/list.do
	 -보여질 화면은 /web-inf/views/free/list.jsp
	 2.view 관련 메소드가 존재한다
	 -가상 경로는 /free/view.do
	 -보여질 화면은 /web-inf/views/free/view.jsp
	 3.modify 관련메소드가 존재한다
	 -가상 경로는 /free/modify.do
	 -보여질 화면은 /web-inf/views/free/modify.jsp
	 
	 *list.jsp에서 링크로 view.do 이동 가능
	 *view.jsp에서 링크로 modify.do로 이동가능
	 *각 jsp에서는 해당 가상경로에 대하여 controller에서 model 객체를 사용하여 데이터로 화면에 출력해준다
	 */
	
	/*
	 	member 등록 화면 만들기
	 	
	 	1.home.jsp 에 '회원목록으로 이동'(member list) 링크를 추가합니다o
	 	1-1.링크를 클릭시 이동할 가상 경로는'/Member/list.do'o
	 	2./Member/list.do 가상 경로의 컨트롤러 메소드에서는 5개의 회원 만들기
	 	ex) name=홍길동, age=20, addr=전주시 덕진구
	 	ArrayList<MemberVO> alist = new ArrayList<MemberVO>();o
	 	
	 	3.만든 회원 배열을 /wed-inf/views/member/list.jsp 에서 출력합니다
	 	4.'/Member/list.do' 에서는 '/Member/view.do'로 이동할수 있는 링크를 제공합니다o
	 	5.'/Member/view.do' 에서는 ' /web-inf/views/Member/view.jsp'로 포워드 합니다
	 	6.view.do에서는 '/Member/modify.do'로 이동 (method=get)o
	 	7.'Member/modify.do' 에서는 /web-inf/views/member/modify.jsp로 포워드합니다
	 	8.modify.jsp 에서는 3개의 정보를 입력받을수 있는 입력 양식 제공o
	 	9.modify.jsp 에서 저장 버튼 클릭시 'Member/modify.do' 입력 데이터 전송합니다(method=post)o
	 	10. 입력받은 값 해당 컨트롤러에서 모두 출력후 'Member/view.do' 로 리다이렉트 합니다o
	 */
	
	
}
