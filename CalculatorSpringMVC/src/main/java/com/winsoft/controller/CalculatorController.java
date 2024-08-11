package com.winsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.winsoft.service.CalculatorService;

@Controller
public class CalculatorController {
	
	@Autowired
	private CalculatorService calculatorService;

	@RequestMapping("/calculate")
	public ModelAndView calculatorHandler() {
		
		ModelAndView mv = new ModelAndView();
		
//		Integer output = calculatorService.performOperations(operations);
//		
//		if ("C".equals(operations))  {
//			mv.addObject("operations", "");
//		}
//		else if ("=".equals(operations)) {
//			mv.addObject("operations", output);
//		}
//		else {
//			mv.addObject("operations", operations+output);
//		}
		
		mv.setViewName("calculator");
		
		return mv;
	}
}
