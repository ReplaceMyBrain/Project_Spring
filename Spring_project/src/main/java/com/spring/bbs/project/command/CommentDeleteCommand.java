package com.spring.bbs.project.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.ContentItemdao;

public class CommentDeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String ic_num =request.getParameter("ic_num");
		ContentItemdao dao = new ContentItemdao();
		String result = dao.commentDelete(ic_num);
		request.setAttribute("result", result);
	}
}
