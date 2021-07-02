package com.spring.bbs.project.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.SearchDao;
import com.spring.bbs.project.dto.PostDto;


public class SearchingCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String category = request.getParameter("table");
		String searching = request.getParameter("searched");
		String condition = request.getParameter("condition");
		SearchDao dao = new SearchDao();
		
		ArrayList<PostDto> dtos = dao.serachList(category, searching, condition);
		request.setAttribute("list", dtos);
	}

}
