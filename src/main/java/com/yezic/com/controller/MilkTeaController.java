package com.yezic.com.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.yezic.com.common.SimpleReturnVo;
import com.yezic.com.common.SimpleReturnVo.ResponseCode;
import com.yezic.com.entity.MilkTea;
import com.yezic.com.entity.MilkTeaClassification;
import com.yezic.com.entity.MilkTeaTaste;
import com.yezic.com.entity.MilkTeaUnit;
import com.yezic.com.service.MilkTeaClassificationService;
import com.yezic.com.service.MilkTeaService;
import com.yezic.com.service.MilkTeaTasteService;
import com.yezic.com.service.MilkTeaUnitService;
import com.yezic.com.util.ServletContextUtil;

@Controller
@RequestMapping("milk")
public class MilkTeaController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(MilkTeaController.class);

	@Resource
	private MilkTeaService milkTeaService;

	@Resource
	private MilkTeaClassificationService milkClaService;

	@Resource
	private MilkTeaTasteService milkTeaTasteService;
	
	@Resource
	private MilkTeaUnitService milkTeaUnitService;

	@RequestMapping("list")
	public void list(MilkTea milkTea, Model model) {
		List<MilkTea> milkTeaList = milkTeaService.getAll(milkTea);
		model.addAttribute("milkTeaList", milkTeaList);
		
		List<MilkTeaClassification> milkClas = milkClaService.getAll(new MilkTeaClassification());
		model.addAttribute("milkClas", milkClas);

		List<MilkTeaTaste> milkTeaTastes = milkTeaTasteService.getAll(new MilkTeaTaste());
		model.addAttribute("milkTeaTastes", milkTeaTastes);
		
		List<MilkTeaUnit> milkTeaUnits = milkTeaUnitService.getAll(new MilkTeaUnit());
		model.addAttribute("milkTeaUnits", milkTeaUnits);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(MilkTea milkTea, MultipartHttpServletRequest multipartRequest) {
		String path = ServletContextUtil.getServletContext().getRealPath("/") + "resources/fileUpload" + File.separator;
		File pathFile = new File(path);
		if (!pathFile.exists()) {
			pathFile.mkdirs();
		}

		try {
			String fileName = null;
			byte[] data = null;
			Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
			for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
				CommonsMultipartFile mf = (CommonsMultipartFile) entity.getValue();
				fileName = mf.getFileItem().getName();
				data = mf.getBytes();
				break;
			}
			
			milkTeaService.insert(path + fileName, data,multipartRequest.getAttribute("basePath")+"/resources/fileUpload/"+ fileName, milkTea);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			milkTeaService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/milk/list";
	}
}
