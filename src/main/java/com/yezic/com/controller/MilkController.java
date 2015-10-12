package com.yezic.com.controller;

import java.io.File;
import java.io.InputStream;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.yezic.com.common.SimpleReturnVo;
import com.yezic.com.common.SimpleReturnVo.ResponseCode;
import com.yezic.com.entity.MilkTea;
import com.yezic.com.service.MilkTeaService;
import com.yezic.com.util.ServletContextUtil;

@Controller
@RequestMapping("milk")
public class MilkController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(MilkController.class);
	
	@Resource
	private MilkTeaService milkTeaService;
	
	@RequestMapping("list")
	public void list(){
		
	}
	
	@RequestMapping("add")
	@ResponseBody
	public Object add(MilkTea milkTea,MultipartHttpServletRequest multipartRequest) {
		String path = ServletContextUtil.getServletContext().getRealPath("/") + "fileUpload"+ File.separator;
		File pathFile = new File(path);
		if (!pathFile.exists()) {
			pathFile.mkdirs();
		}
		
		try {
			String fileName = null;
			byte[] data = null;
			Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
			for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
				CommonsMultipartFile mf = (CommonsMultipartFile)entity.getValue();
				fileName = mf.getFileItem().getName();
				data = mf.getBytes();
				break;
			}
			milkTeaService.insert(path+fileName,data,milkTea);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(),e);
			return new SimpleReturnVo(ResponseCode.FAIL,"添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS,"添加成功！");
	}
}
