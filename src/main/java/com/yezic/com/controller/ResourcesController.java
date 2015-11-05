package com.yezic.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yezic.com.entity.Resources;
import com.yezic.com.service.ResourcesService;

@Controller
@RequestMapping("resources")
public class ResourcesController extends BaseController{

	@Resource 
	private ResourcesService resourcesService;

	@RequestMapping("list")
	public void list() {

	}

	@RequestMapping("treeList")
	@ResponseBody
	public Object treeList() {
		 List<Resources> all = resourcesService.getRecursionList();
		 ReturnList returnList = new ReturnList();
		 returnList.treeLists = all;
		 return returnList;
	}
	
	public class ReturnList {
		public Object treeLists;
	}
}
