package com.spring.bbs.project.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.ContentTipdao;
import com.spring.bbs.project.dto.ContentTipdto;

public class TipCommentContentCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String tc_num =request.getParameter("tc_num");
		
		ContentTipdao dao = new ContentTipdao();
		ContentTipdto dto = dao.commentContent(tc_num);
		
		request.setAttribute("commentcontent_view", dto);
	}

}
