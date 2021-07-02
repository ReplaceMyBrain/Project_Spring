package com.spring.bbs.project.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.NoticeDao;
import com.spring.bbs.project.dto.NoticeDto;


public class LoadNoticeCommand implements Command {

	int numOfTuplesPerPage = 15;
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub

		NoticeDao dao = new NoticeDao();
		int requestPage = 1;
		session = request.getSession();
		
		if ( request.getParameter("page") != null) {
			int posts = (int)session.getAttribute("postsCount");
			requestPage = posts + numOfTuplesPerPage;
			session.setAttribute("postsCount", requestPage);
		}
		
		ArrayList<NoticeDto> dtos = dao.list(requestPage, numOfTuplesPerPage);
		request.setAttribute("list", dtos);
		session.setAttribute("do", "lsit3.do");
	}
	
}
