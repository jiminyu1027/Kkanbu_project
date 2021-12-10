package edu.study.controller;

import java.util.List;
import java.util.Locale;


import javax.servlet.http.HttpServletRequest;
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
import edu.study.service.AddressService;
import edu.study.vo.AddressVO;

@RequestMapping(value="/mypage/deliveryAddr")
@Controller
public class DeliveryAddrController {
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	AddressService AddressService;
	
	@RequestMapping(value="/receiveAddr.do")
	public String receiveAddr(Locale locale, Model model, HttpSession session)throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null){
		
			List<AddressVO> list = AddressService.list(member.getMidx());
			model.addAttribute("list",list);
		
			return "/mypage/deliveryAddr/receiveAddr";
		}else {
			return "redirect:/login.do";
		}
	}
	
	@RequestMapping(value="/receiveAddr.do", method=RequestMethod.POST)
	public String receiveAddr(Locale locale, Model model,AddressVO vo, HttpSession session)throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setMidx(member.getMidx());

		System.out.println("adrec :"+vo.getAdRec() );
		
		AddressService.insert(vo);
		
		//return "/mypage/deliveryAddr/receiveAddr";
		return "redirect:/mypage/deliveryAddr/receiveAddr.do";
	}

	@RequestMapping(value="/receiveAddrUpdate.do", method=RequestMethod.POST)
	public String update(Locale locale, Model model,AddressVO vo,int adidx, HttpSession session) throws Exception{
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setMidx(member.getMidx());
		
		AddressService.update(vo);
		
		return "redirect:/mypage/deliveryAddr/receiveAddr.do";
	}
	
	
	@RequestMapping(value="/delete.do")
	public String delete(Locale locale, Model model,AddressVO vo,int adidx, HttpSession session) throws Exception{
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setMidx(member.getMidx());
		
		AddressService.del(adidx);

		return "redirect:/mypage/deliveryAddr/receiveAddr.do";
	}
	
}

	
