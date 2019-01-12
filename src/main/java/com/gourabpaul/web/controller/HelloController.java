package com.gourabpaul.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.gourabpaul.web.model.MailGun;

@Controller
public class HelloController {
	
	@RequestMapping(value = "/*", method = RequestMethod.GET)
    public String handleResourceNotFoundException() {
        return "notfound";
    }
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		return "index";

	}
	@RequestMapping(value = "/contact/maildoctype", method = RequestMethod.GET)
	public @ResponseBody String sendMail(@RequestParam("email") String email,
            @RequestParam("radiovalue") String radiovalue ) {
		System.out.println(email);
		MailGun mg= new MailGun();
		mg.sendMail(email,radiovalue);
		System.out.println("Happy new year 2019"); // code is changed by Person A1
		return "send";

	}
	@RequestMapping(value = "/download/{type}", method = RequestMethod.GET)
	public void download(@PathVariable("type") String type,HttpServletResponse response) {
		System.out.println(type);
		File file = new File("/online/resume/GourabPaul_3yrs_Java_Web_developer."+type);
		InputStream is = null;
		try {
			is = new FileInputStream(file);
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// MIME type of the file
		response.setContentType("application/octet-stream");
		// Response header
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ file.getName() + "\"");
		// Read from the file and write into the response
		try {
		OutputStream os = response.getOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.flush();
		
			os.close();
			is.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@RequestMapping(value = "/visit", method = RequestMethod.GET)
	public void downloadVisit(HttpServletResponse response) {
		System.out.println("download visit");
		File file = new File("/online/resume/visit_logs_gp.txt");
		InputStream is = null;
		try {
			is = new FileInputStream(file);
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// MIME type of the file
		response.setContentType("application/octet-stream");
		// Response header
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ file.getName() + "\"");
		// Read from the file and write into the response
		try {
		OutputStream os = response.getOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.flush();
		
			os.close();
			is.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
