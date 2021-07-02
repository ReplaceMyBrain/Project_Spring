package com.spring.bbs.project.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.ContentItemdao;
import com.spring.bbs.project.dto.ContentItemdto;

public class CommentContentCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String ic_num =request.getParameter("ic_num");
		
		ContentItemdao dao = new ContentItemdao();
		ContentItemdto dto = dao.commentContent(ic_num);
		
		request.setAttribute("commentcontent_view", dto);
	}

}
