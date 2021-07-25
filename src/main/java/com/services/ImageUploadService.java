package com.services;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



@Service
public class ImageUploadService 
{	
	public void uploadData(MultipartFile file , String path ) throws IOException
	{
		File f=new File(path);
		System.out.println(file.getOriginalFilename() + "1");
//		System.out.println(f.getPath());
//		System.out.println(f.isDirectory());
		f.mkdirs();
		System.out.println(file.getOriginalFilename()+"2");
		f=new File(path,file.getOriginalFilename());
		System.out.println(file.getOriginalFilename()+"3");
		f.createNewFile();
		System.out.println(file.getOriginalFilename()+"4");
		byte bt[]=file.getBytes();
		System.out.println(file.getOriginalFilename() + "5");
		
		FileUtils.writeByteArrayToFile(f, bt);
		
		System.out.println(file.getOriginalFilename() + "6");
		System.out.println("upload data"+file.getOriginalFilename());
		
	}

	public void deleteFile( String path) throws IOException
	{
		FileUtils.deleteDirectory(new File(path));
	}
}
