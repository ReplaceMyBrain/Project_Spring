package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.TipsDao;

public class LoadProtoTipCommand implements Command {

	int numOfTuplesPerPage = 15;
	
	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int requestPage = 1;
		int offset = requestPage - 1;
		
		if ( request.getParameter("page") != null) {
//			int posts = (Integer) request.getAttribute("postsCount");
			int posts = 1;
			requestPage = posts + numOfTuplesPerPage;
			model.addAttribute("courrentPage", requestPage);
		}
		
		TipsDao dao = sqlSession.getMapper(TipsDao.class);
		model.addAttribute("list", dao.listProtoDao(offset, numOfTuplesPerPage));
		model.addAttribute("CATEGORY", "TIP");
		model.addAttribute("CONDITION", "T_TITLE");
		model.addAttribute("do", "protoTipLsit");
		
		
	}

}
