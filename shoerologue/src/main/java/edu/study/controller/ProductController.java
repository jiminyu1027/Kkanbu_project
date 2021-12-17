package edu.study.controller;

import java.io.File;
import java.lang.reflect.Member;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.study.domain.Criteria;
import edu.study.domain.Criteria2;
import edu.study.domain.PageMaker;
import edu.study.domain.PageMaker2;
import edu.study.service.MemberService;
import edu.study.service.ProductService;
import edu.study.service.WishService;
import edu.study.vo.InquiryVO;
import edu.study.vo.MemberVO;
import edu.study.vo.ProductVO;
import edu.study.vo.QaVO;
import edu.study.vo.ReviewVO;
import edu.study.vo.WishListVO;
import utils.UploadFileUtils;

@RequestMapping(value="/")
@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	MemberService MemberService;
	
	@Autowired
	WishService wishService;
	
	@Autowired
	edu.study.service.QaService QaService;
	
	@Autowired
	edu.study.service.ReviewService ReviewService;
	
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="/product/product.do")
	public String product(Locale locale, Model model,int pidx,HttpSession session)throws Exception {
		MemberVO member=(MemberVO)session.getAttribute("member");
		
			ProductVO pvo = productService.detail(pidx);
			model.addAttribute("pvo", pvo);
				
			List<QaVO> qalist = QaService.productList(pidx);
			model.addAttribute("qalist",qalist);
			
			List<ReviewVO> prvlist = ReviewService.prvlist(pidx);
			model.addAttribute("prvlist",prvlist);
			
			List<WishListVO> wlist = wishService.wishlist(member.getMidx());
			model.addAttribute("wishlist", wlist);
			
		return "/product/product";
		
	}	
	@RequestMapping(value="/cart/cart.do",method=RequestMethod.POST)
	public String insert(Locale locale, Model model, ProductVO pvo,HttpSession session)throws Exception {
			 
		MemberVO member = (MemberVO)session.getAttribute("member");
		pvo.setMidx(member.getMidx());
		
			productService.insert(pvo);
			//System.out.println("PIDX::"+pvo.getPidx());
			
		
		return "redirect:/cart/cart.do";
	}
	
	@RequestMapping(value="/admin/productInsert.do",method=RequestMethod.GET)
	public String productInsert(Model model,ProductVO pvo,HttpSession session)throws Exception {
		
		return "/admin/productInsert";
	}
	
	@RequestMapping(value="/admin/pdAllList.do",method=RequestMethod.POST)
	public String productInsert(Locale locale, Model model,ProductVO pvo,HttpSession session,MultipartFile file1,MultipartFile file2,MultipartFile file3,MultipartFile file4,MultipartFile file5)throws Exception {
		
		String imgUploadPath = uploadPath + File.separator + "productDetail";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file1 != null && file1.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file1.getOriginalFilename(), file1.getBytes(), ymdPath); 
		 pvo.setpFile1(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile1("");
		}
		
		if(file2 != null && file2.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file2.getOriginalFilename(), file2.getBytes(), ymdPath); 
		 pvo.setpFile2(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile2("");
		}
		
		if(file3 != null && file3.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file3.getOriginalFilename(), file3.getBytes(), ymdPath); 
		 pvo.setpFile3(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile3("");
		}
		
		if(file4 != null && file4.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file4.getOriginalFilename(), file4.getBytes(), ymdPath); 
		 pvo.setpFile4(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile4("");
		}
		
		if(file5 != null && file5.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file5.getOriginalFilename(), file5.getBytes(), ymdPath); 
		 pvo.setpFile5(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile5("");
		}
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		pvo.setMidx(member.getMidx());
		
			productService.productInsert(pvo);
				
		return "redirect:/admin/pdAllList.do";
	}
	
	@RequestMapping(value="/admin/delProduct.do",method=RequestMethod.GET)
	public String delProduct(Model model,ProductVO pvo,HttpSession session)throws Exception {
		
		productService.delProduct(pvo);
		
		return "redirect:/admin/pdAllList.do";
	}
	
	@RequestMapping(value="/admin/productModify.do",method=RequestMethod.GET)
	public String productModify(Model model,ProductVO pvo,HttpSession session,int pidx)throws Exception {
		
		ProductVO pdvo = productService.detail2(pidx);
		model.addAttribute("pdvo", pdvo);
		
		System.out.println(pdvo.getPidx());
		System.out.println(pdvo.getpBrandKr());
		System.out.println(pdvo.getpNameKr());
		
		return "/admin/productModify";
	}
	
	
	@RequestMapping(value="/admin/productModify.do",method=RequestMethod.POST)
	public String productModify(Locale locale, Model model,ProductVO pvo,HttpSession session,MultipartFile file1,MultipartFile file2,MultipartFile file3,MultipartFile file4,MultipartFile file5)throws Exception {
		
		String imgUploadPath = uploadPath + File.separator + "productDetail";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file1 != null && file1.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file1.getOriginalFilename(), file1.getBytes(), ymdPath); 
		 pvo.setpFile1(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile1("");
		}
		
		if(file2 != null && file2.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file2.getOriginalFilename(), file2.getBytes(), ymdPath); 
		 pvo.setpFile2(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile2("");
		}
		
		if(file3 != null && file3.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file3.getOriginalFilename(), file3.getBytes(), ymdPath); 
		 pvo.setpFile3(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile3("");
		}
		
		if(file4 != null && file4.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file4.getOriginalFilename(), file4.getBytes(), ymdPath); 
		 pvo.setpFile4(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile4("");
		}
		
		if(file5 != null && file5.getSize()>0) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file5.getOriginalFilename(), file5.getBytes(), ymdPath); 
		 pvo.setpFile5(File.separator + "productDetail" + ymdPath + File.separator + fileName);
		} else {
		 pvo.setpFile5("");
		}
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		pvo.setMidx(member.getMidx());
		
			productService.productModify(pvo);
			model.addAttribute("pvo", pvo);
				
		return "redirect:/product/product.do?pidx="+pvo.getPidx();
	}
	
	@RequestMapping(value="/admin/pdAllList.do")
	public String pdAllList(Locale locale, Model model,ProductVO pvo, Criteria2 cri)throws Exception {
			
		List<ProductVO> pdAllList = productService.pdAllList(pvo,cri);
		model.addAttribute("pdAllList", pdAllList);
		
		PageMaker2 pageMaker2 = new PageMaker2();
		pageMaker2.setCri(cri);;
		pageMaker2.setTotalCount(productService.countAllList());
		
		model.addAttribute("pageMaker2", pageMaker2);
		
		
		return "/admin/pdAllList";
	}
	
	
}

	
