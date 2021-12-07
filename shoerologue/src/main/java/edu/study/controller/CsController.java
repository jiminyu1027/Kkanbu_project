package edu.study.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.study.vo.MemberVO;
import edu.study.vo.NoticeVO;
import edu.study.vo.QaVO;

@RequestMapping(value="/customerService")
@Controller
public class CsController {
	
	@Autowired
	edu.study.service.NoticeService NoticeService;
	@Autowired
	edu.study.service.QaService QaService;
	
	@RequestMapping(value="/cs.do")
	public String cs(Locale locale,Model model)throws Exception {
		
		return "/customerService/cs";
	}
	
	
	@RequestMapping(value="/notice.do")
	public String notice(Locale locale,Model model)throws Exception {
		
		List<NoticeVO> nlist = NoticeService.nlist();
		
		model.addAttribute("nlist",nlist);
		
		return "/customerService/notice";
	}
	
	@RequestMapping(value = "/noticeAction.do", method=RequestMethod.POST)
	public String insert(Locale locale,Model model,NoticeVO vo) throws Exception{
		
		NoticeService.insert(vo);
		
		return "redirect:/customerService/notice.do";
	}
	
	@RequestMapping(value="/writeReview.do")
	public String writeReview(Locale locale,Model model)throws Exception{
		
		return "/customerService/writeReview";
	}
	
	@RequestMapping(value="/event.do")
	public String event(Locale locale,Model model,int nidx) throws Exception{
		
		NoticeVO nvo = NoticeService.detail(nidx);
		
		model.addAttribute("nvo",nvo);
		
		return "/customerService/event";
	}
	
	@RequestMapping(value="/qaDetail.do")
	public String qaDetail(Locale locale,Model model,@RequestParam("pqidx")int pqidx)throws Exception{
		
		
		
		QaVO qvo = QaService.detail(pqidx);
		
		model.addAttribute("qvo",qvo);
		
		return "/customerService/qaDetail";
	}
	
}

	
