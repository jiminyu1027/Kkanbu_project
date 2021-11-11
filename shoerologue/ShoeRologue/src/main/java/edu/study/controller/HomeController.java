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
	//FreeController �����ϱ�
	
	/*
	 1.list ���� �޼ҵ尡 �����Ѵ�
	 -�����δ� /free/list.do
	 -������ ȭ���� /web-inf/views/free/list.jsp
	 2.view ���� �޼ҵ尡 �����Ѵ�
	 -���� ��δ� /free/view.do
	 -������ ȭ���� /web-inf/views/free/view.jsp
	 3.modify ���ø޼ҵ尡 �����Ѵ�
	 -���� ��δ� /free/modify.do
	 -������ ȭ���� /web-inf/views/free/modify.jsp
	 
	 *list.jsp���� ��ũ�� view.do �̵� ����
	 *view.jsp���� ��ũ�� modify.do�� �̵�����
	 *�� jsp������ �ش� �����ο� ���Ͽ� controller���� model ��ü�� ����Ͽ� �����ͷ� ȭ�鿡 ������ش�
	 */
	
	/*
	 	member ��� ȭ�� �����
	 	
	 	1.home.jsp �� 'ȸ��������� �̵�'(member list) ��ũ�� �߰��մϴ�o
	 	1-1.��ũ�� Ŭ���� �̵��� ���� ��δ�'/Member/list.do'o
	 	2./Member/list.do ���� ����� ��Ʈ�ѷ� �޼ҵ忡���� 5���� ȸ�� �����
	 	ex) name=ȫ�浿, age=20, addr=���ֽ� ������
	 	ArrayList<MemberVO> alist = new ArrayList<MemberVO>();o
	 	
	 	3.���� ȸ�� �迭�� /wed-inf/views/member/list.jsp ���� ����մϴ�
	 	4.'/Member/list.do' ������ '/Member/view.do'�� �̵��Ҽ� �ִ� ��ũ�� �����մϴ�o
	 	5.'/Member/view.do' ������ ' /web-inf/views/Member/view.jsp'�� ������ �մϴ�
	 	6.view.do������ '/Member/modify.do'�� �̵� (method=get)o
	 	7.'Member/modify.do' ������ /web-inf/views/member/modify.jsp�� �������մϴ�
	 	8.modify.jsp ������ 3���� ������ �Է¹����� �ִ� �Է� ��� ����o
	 	9.modify.jsp ���� ���� ��ư Ŭ���� 'Member/modify.do' �Է� ������ �����մϴ�(method=post)o
	 	10. �Է¹��� �� �ش� ��Ʈ�ѷ����� ��� ����� 'Member/view.do' �� �����̷�Ʈ �մϴ�o
	 */
	
	
}
