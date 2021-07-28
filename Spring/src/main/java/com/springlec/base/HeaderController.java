package com.springlec.base;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {

	
	@RequestMapping("/Login")
	public String Signup(Model model) {
		return "Login";	
	}
	
	
	@RequestMapping("/logout")
	public String logout(Model model, HttpSession session) {
		session.invalidate();
		return "Login";
	}
	
	

	
}
