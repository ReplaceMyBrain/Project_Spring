package com.spring.bbs.project.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.ContentItemdao;

public class ContentItemDeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String i_num =request.getParameter("i_num");
		
		ContentItemdao dao = new ContentItemdao();
		String result = dao.contentDelete(i_num);
		request.setAttribute("result", result);
	}

}
