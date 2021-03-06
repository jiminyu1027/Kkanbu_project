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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.MemberService;
import edu.study.service.WishService;
import edu.study.vo.MemberVO;
import edu.study.domain.Criteria3;
import edu.study.domain.PageMaker3;
import edu.study.service.AddressService;
import edu.study.service.CartService;
import edu.study.vo.AddressVO;
import edu.study.vo.CartVO;

@RequestMapping(value="/mypage/deliveryAddr")
@Controller
public class DeliveryAddrController {
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	AddressService AddressService;
	
	@Autowired
	CartService CartService;
	
	@Autowired
	WishService wishService;
	
	@RequestMapping(value="/receiveAddr.do")
	public String receiveAddr(@ModelAttribute CartVO cvo,Locale locale, Model model, HttpSession session,Criteria3 cri)throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null){
			
			int midx = member.getMidx();
		
			List<AddressVO> list = AddressService.list(member.getMidx());
			model.addAttribute("list",list);
			
			List<CartVO> clist=CartService.list(member.getMidx());
			model.addAttribute("clist",clist);
			
			PageMaker3 pageMaker3 = new PageMaker3();
			pageMaker3.setCri(cri);
			pageMaker3.setTotalCount(wishService.countwlist(midx));
			
			model.addAttribute("pageMaker3", pageMaker3);
		
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
	
	@RequestMapping(value="/addrSelectOne.do")
	@ResponseBody
	public AddressVO selectOne(Locale locale, Model model,int adidx, HttpSession session) throws Exception{
		
		AddressVO vo = AddressService.selectOne(adidx);
		
		return vo;
	}
	
	
	@RequestMapping(value="/delete.do", method=RequestMethod.POST)
	public String delete(Locale locale, Model model,AddressVO vo,int adidx, HttpSession session) throws Exception{
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		vo.setMidx(member.getMidx());
		
		System.out.println("?????"+adidx);
		
		AddressService.del(adidx);

		return "redirect:/mypage/deliveryAddr/receiveAddr.do";
	}
	
}

	
