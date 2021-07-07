package com.springproject.iamdeveloper.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springproject.iamdeveloper.dao.SignUpDao;
import com.springproject.iamdeveloper.dto.UserDto;

@Controller
public class AjaxController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/EmailCheckAjax")
	public void EmailCheckAjax (Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		SignUpDao dao = sqlSession.getMapper(SignUpDao.class);
		ArrayList<UserDto> dto = dao.emailCheck(request.getParameter("email"));
		model.addAttribute("email",request.getParameter("email"));
		if(dto.size() == 0) {
			response.getWriter().write("true");
		}else {
			response.getWriter().write("false");
		}
	}
	
	@RequestMapping("/TelCheckAjax")
	public void TelCheckAjax (Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		SignUpDao dao = sqlSession.getMapper(SignUpDao.class);
		ArrayList<UserDto> dto = dao.telCheck(request.getParameter("tel"));
		model.addAttribute("tel",request.getParameter("tel"));
		if(dto.size() == 0) {
			response.getWriter().write("true");
		}else {
			response.getWriter().write("false");
		}
	}
	
	
}
