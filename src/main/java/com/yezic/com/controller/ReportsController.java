package com.yezic.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("reports")
public class ReportsController extends BaseController{
	
	@RequestMapping("monthSaleReports")
    public void monthSaleReports(){
    	
    }
}
