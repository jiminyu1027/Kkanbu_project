package edu.study.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/Shoerologue/order")
@Controller
public class OrderController{
	
	@RequestMapping(value="/orderpayment.do")
	public String orderpayment(Locale locale, Model model)throws Exception {
		
		return "shoerologue/order/orderpayment";
	}
	
}

	
