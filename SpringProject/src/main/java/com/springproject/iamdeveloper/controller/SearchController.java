package com.springproject.iamdeveloper.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springproject.iamdeveloper.command.Command;

@Controller
public class SearchController {
	
	@Autowired
	private SqlSession sqlSession;
	
	private Command EmailSearchCommand = null;
	private Command PwdSearchCommand = null;
	
	

	@Autowired
	public void auto(Command emailSearch, Command pwdSearch) {
		this.EmailSearchCommand = emailSearch;
		this.PwdSearchCommand = pwdSearch;
	}
	
	@RequestMapping("/EmailSearch")
	public String EmailSearch(HttpServletRequest request, Model model, HttpSession session) {
		System.out.println("이메일찾기");
		
		model.addAttribute("request", request);
		EmailSearchCommand.execute(model, sqlSession, session);
		
		System.out.println("이메일찾기" + session.getAttribute("ES"));
		
		if(session.getAttribute("ES").equals(0)) {
			return "EmailSearchFail";
		}else if(session.getAttribute("ES").equals(1)){
			return "EmailSearchSuccess";
		}else {
			return "EmailSearchWithdraw";
		}
	}
	
	@RequestMapping("/PwdSearch")
	public String PwdSearch(HttpServletRequest request, Model model, HttpSession session) {
		System.out.println("비번찾기");
		
		model.addAttribute("request", request);
		PwdSearchCommand.execute(model, sqlSession, session);
		
		System.out.println("비번찾기" + session.getAttribute("PS"));
		
		if(session.getAttribute("PS").equals(0)) {
			return "PwdSearchFail";
		}else if(session.getAttribute("PS").equals(1)){
			return "PwdSearchSuccess";
		}else {
			return "pwdSearchWithdraw";
		}
	}
	
	

}
