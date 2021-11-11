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
		
		System.out.println("가상경로 Board/list.do로 호출된 메소드 입니다");
		
		ArrayList<String> list = new ArrayList<String>();
						
		list.add("첫번째 데이터");
		list.add("두번째 데이터");
		list.add("세번째 데이터");
		list.add("네번째 데이터");
		list.add("다섯번째 데이터");
		
		model.addAttribute("list",list);
		
		ArrayList<BoardVO> blist = boardService.list();
		
		model.addAttribute("blist",blist);
		
		return "board/list"; //(WEB-INF/views/)board/list.jsp
	}
	
	@RequestMapping(value="/view.do")
	public String view(Locale locale, Model model, int bidx) throws Exception  {
		
		/*
		 * 1.bidx를 가지고 온 이유: bidx와 일치하는 게시글 한건을 DB에서 꺼내오기 위함
		 * 2.view 메소드의 목적 : view.do를 요청한 브라우저에게 view.jsp 포워드
		 * 2-1.bidx를 이용하여 DB에서 가졍ㄴ 게시글 한건을 view.jsp로 전달
		 * 
		 * 1.service로 DB에서 데이터 한건 가져오도록 요청 (매개값 사용)
		 * 2.service에서는 controller 에서 1번에 대한 요청을 받음
		 * 3.service에서는 controller 요청을 처리하기 위하여 dao로 데이터 요청(매개값을 사용하여 bidx 전달)
		 * 4.dao에서는 service로부터 요청 받은 데이터를 DB에 연결하여 조회함
		 * 5.DB에서 조회한 데이터를 service로 변환할 작업 처리(resultset에 있는 데이터를 반환 타입으로 가공)
		 * 6.return키워드를 사용하여 가공한 데이터를 service로 반환
		 * 7.service에서는 dao로 부터 받은 데이터를 return을 사용하여 controller로 전달
		 * 8.controller에서는 service에서 받아온 데이터를 화면으로 전달(model객체 사용)
		 * */
		
		
		BoardVO vo = boardService.vo(bidx);
		
		model.addAttribute("vo",vo);
		System.out.println("bidx"+bidx);
		
			return"board/view";
		}
	//수정하기 화면 만들기
	/*
	 	1.수정화면에 대한 가상경로는 /Board/modify.do 입니다
	 	2.가상경로로 화면에 출력되는 화면은 /web-inf/views/board/modify.jsp입니다
	 	3.modify.jsp 화면에서는 글제목, 작성자, 글내용을 입력할수 있는 입력 양식이 존재합니다
	 	4.modify.jsp 화면에서 저장 버튼을 클릭하면 /Board/modifyOk.do 가상경로로 입력된 데이터를 전송합니다
	 	5./Board/modifyOk.do의 컨트롤러에서는 입력받은 정보를 모두 console로 출력합니다
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
	

