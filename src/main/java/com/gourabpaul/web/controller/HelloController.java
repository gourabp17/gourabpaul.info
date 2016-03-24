package com.gourabpaul.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gourabpaul.web.model.MailGun;

@Controller
public class HelloController {

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
		return "send";

	}

}