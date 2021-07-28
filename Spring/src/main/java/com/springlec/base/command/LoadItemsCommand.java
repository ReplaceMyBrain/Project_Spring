package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.ItemsDao;

public class LoadItemsCommand implements Command {

	int numOfTuplesPerPage = 15;
	
	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int requestPage = 1;
		int offset = requestPage - 1;
		
		if ( request.getParameter("page") != null) {
			int posts = 1;
			requestPage = posts + numOfTuplesPerPage;
			model.addAttribute("courrentPage", requestPage);
		}
		
		ItemsDao dao = sqlSession.getMapper(ItemsDao.class);
		model.addAttribute("list", dao.itemListDao(offset, numOfTuplesPerPage));
		model.addAttribute("do", "lsit");
		
		System.out.println(dao.itemListDao(offset, numOfTuplesPerPage));
		System.out.println(offset);
		System.out.println(numOfTuplesPerPage);
	}

}
