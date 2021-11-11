package edu.study.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.service.BoardService;
import edu.study.vo.BoardVO;

@RequestMapping(value="/Board")
@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/list.do")
	public String bList(Locale locale, Model model)	throws Exception {
		
		System.out.println("������ Board/list.do�� ȣ��� �޼ҵ� �Դϴ�");
		
		ArrayList<String> list = new ArrayList<String>();
						
		list.add("ù��° ������");
		list.add("�ι�° ������");
		list.add("����° ������");
		list.add("�׹�° ������");
		list.add("�ټ���° ������");
		
		model.addAttribute("list",list);
		
		ArrayList<BoardVO> blist = boardService.list();
		
		model.addAttribute("blist",blist);
		
		return "board/list"; //(WEB-INF/views/)board/list.jsp
	}
	
	@RequestMapping(value="/view.do")
	public String view(Locale locale, Model model, int bidx) throws Exception  {
		
		/*
		 * 1.bidx�� ������ �� ����: bidx�� ��ġ�ϴ� �Խñ� �Ѱ��� DB���� �������� ����
		 * 2.view �޼ҵ��� ���� : view.do�� ��û�� ���������� view.jsp ������
		 * 2-1.bidx�� �̿��Ͽ� DB���� ������ �Խñ� �Ѱ��� view.jsp�� ����
		 * 
		 * 1.service�� DB���� ������ �Ѱ� ���������� ��û (�Ű��� ���)
		 * 2.service������ controller ���� 1���� ���� ��û�� ����
		 * 3.service������ controller ��û�� ó���ϱ� ���Ͽ� dao�� ������ ��û(�Ű����� ����Ͽ� bidx ����)
		 * 4.dao������ service�κ��� ��û ���� �����͸� DB�� �����Ͽ� ��ȸ��
		 * 5.DB���� ��ȸ�� �����͸� service�� ��ȯ�� �۾� ó��(resultset�� �ִ� �����͸� ��ȯ Ÿ������ ����)
		 * 6.returnŰ���带 ����Ͽ� ������ �����͸� service�� ��ȯ
		 * 7.service������ dao�� ���� ���� �����͸� return�� ����Ͽ� controller�� ����
		 * 8.controller������ service���� �޾ƿ� �����͸� ȭ������ ����(model��ü ���)
		 * */
		
		
		BoardVO vo = boardService.vo(bidx);
		
		model.addAttribute("vo",vo);
		System.out.println("bidx"+bidx);
		
			return"board/view";
		}
	//�����ϱ� ȭ�� �����
	/*
	 	1.����ȭ�鿡 ���� �����δ� /Board/modify.do �Դϴ�
	 	2.�����η� ȭ�鿡 ��µǴ� ȭ���� /web-inf/views/board/modify.jsp�Դϴ�
	 	3.modify.jsp ȭ�鿡���� ������, �ۼ���, �۳����� �Է��Ҽ� �ִ� �Է� ����� �����մϴ�
	 	4.modify.jsp ȭ�鿡�� ���� ��ư�� Ŭ���ϸ� /Board/modifyOk.do �����η� �Էµ� �����͸� �����մϴ�
	 	5./Board/modifyOk.do�� ��Ʈ�ѷ������� �Է¹��� ������ ��� console�� ����մϴ�
	 */
	
	@RequestMapping(value="/modify.do", method = RequestMethod.GET)
	public String modify(Locale locale, Model model, int bidx) throws Exception {
		
		BoardVO boardVO = boardService.vo(bidx);
		model.addAttribute("vo",boardVO);
		
		return "board/modify";
		
	}
	
	@RequestMapping(value="/modify.do", method = RequestMethod.POST)
	public String modify(Locale locale, Model model, BoardVO vo) throws Exception{
		
		boardService.update(vo);
		System.out.println("subject1"+vo.getSubject());
		
		return "redirect:/Board/view.do?bidx="+vo.getBidx();
		
	}
	@RequestMapping(value="/list.do", method=RequestMethod.POST)
	public String del(Locale locale, Model model, BoardVO vo)throws Exception{
		boardService.del(vo);
		
		return "redirect:/Board/list.do";
	}
	
	
	
	
	}
	

