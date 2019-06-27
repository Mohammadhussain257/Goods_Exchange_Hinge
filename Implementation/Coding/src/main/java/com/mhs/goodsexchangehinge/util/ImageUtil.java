package com.mhs.goodsexchangehinge.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ImageUtil {
	public static final String IMAGE_UPLOAD_PATH = "F:/SavedFile/";
	private static final int DEFAULT_BUFFER_SIZE = 2048;

	public static String writeImageToFile(CommonsMultipartFile file) {
		String imageUrl = IMAGE_UPLOAD_PATH + file.getOriginalFilename();
		/*
		 * File fileSaveDir = new File(imageUrl); fileSaveDir.getParent(); if
		 * (!fileSaveDir.exists()) { fileSaveDir.mkdirs(); try {
		 * fileSaveDir.createNewFile(); } catch (IOException e) { e.printStackTrace(); }
		 * }
		 */
		try (BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(imageUrl))) {
			byte[] bytes = file.getBytes();
			out.write(bytes);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return imageUrl;
	}

	public static void showImage(int id, String imagerUrl, HttpServletRequest request, HttpServletResponse response) {
		File file = new File(imagerUrl);
		BufferedInputStream in = null;
		BufferedOutputStream out = null;
		try {
			in = new BufferedInputStream(new FileInputStream(file), DEFAULT_BUFFER_SIZE);
			out = new BufferedOutputStream(new FileOutputStream(file), DEFAULT_BUFFER_SIZE);

			byte[] buffer = new byte[DEFAULT_BUFFER_SIZE];
			int length;
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();

		} finally {
			try {
				in.close();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();

			}
		}
	}

}
