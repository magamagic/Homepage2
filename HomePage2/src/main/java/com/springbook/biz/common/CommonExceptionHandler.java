package com.springbook.biz.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice("com.springbook.biz")
public class CommonExceptionHandler {
	@ExceptionHandler(ArithmeticException.class)
	public ModelAndView handlerArithMathicException(Exception e){
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception",e);
		mav.setViewName("common/arithmeticError");
		return mav;
	}
	
	@ExceptionHandler(NullPointerException.class)
	public ModelAndView handlerNullPointerException(Exception e){
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception1",e);
		mav.setViewName("common/nullPointerError");
		return mav;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(Exception e){
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception",e);
		mav.setViewName("common/error");
		return mav;
	}
	@ExceptionHandler(IllegalArgumentException.class)
	public ModelAndView handlerunEqualPassworderror(Exception e){
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception",e);
		mav.setViewName("common/unEqualPassworderror");
		return mav;
	}
	
	
	
	
	

}
