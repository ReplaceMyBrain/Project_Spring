package com.spring.bbs.project.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.ContentNoticedao;

public class NoticeCommentDeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String nc_num =request.getParameter("nc_num");
		ContentNoticedao dao = new ContentNoticedao();
		String result = dao.commentDelete(nc_num);
		request.setAttribute("result", result);
	}

}
