package edu.study.controller;

import java.io.File;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.study.service.CartService;
import edu.study.service.MemberService;
import edu.study.vo.CartVO;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;
import edu.study.vo.QaVO;
import edu.study.vo.ReviewVO;
import utils.UploadFileUtils;

@RequestMapping(value="/mypage/shopping")
@Controller
public class ShoppingController {
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	CartService CartService;
	
	@Autowired
	edu.study.service.QaService QaService;
	
	@Autowired
	edu.study.service.ReviewService ReviewService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="/wishlist.do")
	public String wishlist(Locale locale, Model model, HttpSession session)throws Exception{
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member != null) {
			List<CartVO> list=CartService.list(member.getMidx());
			model.addAttribute("list",list);
			
		return "/mypage/shopping/wishlist";
		}else {
			return "redirect:/login.do";
		}
		
	}
	
	@RequestMapping(value="/qaList.do")
	public String qaList(Locale locale,Model model,HttpSession httr)throws Exception{
		
		MemberVO member = (MemberVO)httr.getAttribute("member");
		
		int midx = member.getMidx();
		
		List<QaVO> pqlist = QaService.pqlist(midx);
		
		List<QaVO> masterList = QaService.masterList();
		
		model.addAttribute("pqlist",pqlist);
		model.addAttribute("masterList",masterList);
		
		return "/mypage/shopping/qaList";
	}
	
	@RequestMapping(value="/qaList.do",method=RequestMethod.POST)
	public String insert(Locale locale,Model model,QaVO vo,@RequestParam("pidx") int pidx,HttpSession httr) throws Exception{
		
			MemberVO member = (MemberVO)httr.getAttribute("member");
			
			int midx = member.getMidx();
					
			
			
			vo.setMidx(midx);
			vo.setPidx(pidx);   
			
			QaService.insert(vo);
			
		return "redirect:/mypage/shopping/qaList.do";
	} 
	
	@RequestMapping(value="qaUpdate.do" , method=RequestMethod.POST)
	public String update(Locale locale,Model model,@RequestParam("pqidx") int pqidx) throws Exception{
		
		QaService.update(pqidx);
		
		return "redirect:/mypage/shopping/qaList.do";
	}
	
	@RequestMapping(value="/myReview.do")
	public String myReview(Locale locale,Model model,HttpSession httr)throws Exception{
		
		MemberVO member = (MemberVO)httr.getAttribute("member");
		
		int midx = member.getMidx();
		
		List<ReviewVO> mylist = ReviewService.mylist(midx);
		
		List<ReviewVO> masterlist = ReviewService.masterList();
		
		model.addAttribute("mylist",mylist);
		model.addAttribute("masterlist",masterlist);
		
		
		return "/mypage/shopping/myReview";
	}
	
	@RequestMapping(value="/myReviewAction.do" , method=RequestMethod.POST)
	public String myReview(Locale locale,Model model,ReviewVO vo,HttpSession httr,int pidx,String pNameKr,String pBrandKr,MultipartFile rvtFile) throws Exception{
		
		String imgUploadPath = uploadPath + File.separator + "reviewFolder";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(rvtFile != null && rvtFile.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, rvtFile.getOriginalFilename(), rvtFile.getBytes(), ymdPath); 
		 vo.setRvFile(File.separator + "reviewFolder" + ymdPath + File.separator + fileName);
		} else {
		 vo.setRvFile("");
		}
		
		MemberVO member = (MemberVO)httr.getAttribute("member");
		
		int midx = member.getMidx();
		
	
		vo.setpNameKr(pNameKr);
		vo.setpBrandKr(pBrandKr);
		vo.setRvWriter(member.getmName());
		vo.setMidx(midx);
		vo.setPidx(pidx);
		
		
		ReviewService.insert(vo);
		
		return "redirect:/mypage/shopping/myReview.do";
	}
	@RequestMapping(value="/reviewDel.do")
	public String updateDel(Locale locale,Model model,int rvidx) throws Exception{
		
		ReviewService.updateDel(rvidx);
		
		return "redirect:/mypage/shopping/myReview.do";
	}
}
