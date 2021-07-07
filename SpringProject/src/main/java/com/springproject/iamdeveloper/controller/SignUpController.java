package com.springproject.iamdeveloper.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springproject.iamdeveloper.dao.SignUpDao;


@Controller
public class SignUpController {

	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/register")
	public String register(HttpServletRequest request, Model model) {
		String address = request.getParameter("address1") + " " + request.getParameter("address2");
	
		SignUpDao dao = sqlSession.getMapper(SignUpDao.class);
		dao.signupDao(request.getParameter("email"), request.getParameter("name"),request.getParameter("pwd"),address,request.getParameter("tel"),request.getParameter("git"));
		model.addAttribute("name",request.getParameter("name"));
		return "SignupSuccess";
	}
	
}
