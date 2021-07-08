package com.springproject.iamdeveloper.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springproject.iamdeveloper.dao.DonateDao;

@Controller
public class Donatecontroller {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/Donation")
	public String donation(Model model, HttpSession session) {
		DonateDao dao = sqlSession.getMapper(DonateDao.class);
		model.addAttribute("sumDonate",dao.donation().get(0).getSumDonate());	
		return "Donation";
	}
	
	@RequestMapping("/DonateClick")
	public String donateClick(Model model, HttpServletRequest request, HttpSession session) {
		DonateDao dao = sqlSession.getMapper(DonateDao.class);
		dao.donateClick(request.getParameter("amount"));
		
		model.addAttribute("sumDonate",dao.donation());	
		model.addAttribute("amount",request.getParameter("amount"));
		
		return "DonationSuccess";
	}
	
}
