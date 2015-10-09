package com.yezic.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("milk")
public class MilkController extends BaseController{
      
	@RequestMapping("list")
	public void list(){
		
	}
}
