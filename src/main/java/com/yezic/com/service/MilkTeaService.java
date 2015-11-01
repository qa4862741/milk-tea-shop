package com.yezic.com.service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.MilkTea;
import com.yezic.com.repository.MilkTeaMapper;
import com.yezic.com.util.ScaleImage;

@Service
public class MilkTeaService extends BaseService<MilkTea> {

	@Resource
	private MilkTeaMapper milkTeaMapper;

	@Override
	protected BaseMapper<MilkTea> getMapper() {
		return milkTeaMapper;
	}

	public void insert(String fileName, String savePath, byte[] data, String accessPath, MilkTea milkTea)
			throws IOException {
		File file = new File(savePath + fileName);
		String scale = savePath + "scale_" + fileName;
		milkTea.setImagePath(accessPath + fileName);
		milkTea.setScaledImagePath(scale);
		FileCopyUtils.copy(data, file);

		zoomOut(file, new File(scale));
		super.insert(milkTea);
	}

	public static void zoomOut(File source, File dest) throws IOException {
		BufferedImage srcBufferImage = ImageIO.read(new FileInputStream(source));

		ScaleImage scaleImage = ScaleImage.getInstance();
		BufferedImage scaledImage = scaleImage.imageZoomOut(srcBufferImage, 60, 60);

		FileOutputStream out = new FileOutputStream(dest);
		ImageIO.write(scaledImage, "jpeg", out);
	}

	public static void main(String[] args) throws IOException {
		String path = "E:\\Java\\MilkTeaWorkspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\milk-tea-shop\\resources\\fileUpload\\";
		File file = new File(path);
		for (File source : file.listFiles()) {
			zoomOut(source, new File(path+"scale_" + source.getName()));
		}
	}

}
