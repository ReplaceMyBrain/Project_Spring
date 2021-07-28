package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.TipsDao;

public class LoadCodeTipCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		int numOfTuplesPerPage = 15;
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
		
		TipsDao dao = sqlSession.getMapper(TipsDao.class);
		model.addAttribute("list", dao.listCodeDao(offset, numOfTuplesPerPage));
		model.addAttribute("CATEGORY", "TIP");
		model.addAttribute("TITLE", "T_TITLE");
		model.addAttribute("do", "codeTipLsit");
	}

}
