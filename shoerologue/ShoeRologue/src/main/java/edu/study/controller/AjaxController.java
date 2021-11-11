package edu.study.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.study.service.SampleService;
import edu.study.vo.SampleVO;

@RequestMapping(value="/ajax")
@Controller
public class AjaxController {

	@Autowired
	SampleService sampleService;
	
	@RequestMapping(value="/list.do")
	public String list(Locale locale, Model model) {
		return "ajax/list";
	}
	@RequestMapping(value="/ajaxlist.do", produces = "application/test;charset=utf8")
	@ResponseBody
	public String ajaxlist(Locale locale, Model model, String sampleData) {
		System.out.println("sampleData>>>>>>>>"+sampleData);
		return "testtest";
	}
	
	@RequestMapping(value="/test.do", produces = "application/test;charset=utf8")
	@ResponseBody
	public String test(String param) {
		return param;
	}
	
	@RequestMapping(value="/alllist.do")
	@ResponseBody
	public List<SampleVO> alllist() throws Exception{
		
		List<SampleVO> list = sampleService.list();
		
		return list;
	}
	
	@RequestMapping(value="/detail.do")
	@ResponseBody
	public SampleVO detail(int sidx) throws Exception{
		
		SampleVO vo = sampleService.detail(sidx);
		System.out.println("vo>>>>>>>>>>"+vo);
		return vo;
	}
	
}
