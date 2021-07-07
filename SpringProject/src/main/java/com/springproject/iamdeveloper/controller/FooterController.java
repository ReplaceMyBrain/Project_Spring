package com.springproject.iamdeveloper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FooterController {
	
	@RequestMapping("/TermsAndConditions")
	public String TermsAndConditions(Model model) {
		return "TermsAndConditions";	
	}
	
	@RequestMapping("/PrivacyPolicy")
	public String PrivacyPolicy(Model model) {
		return "PrivacyPolicy";
	}
	
}
