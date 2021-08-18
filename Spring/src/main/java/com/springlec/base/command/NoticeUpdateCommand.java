package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.NoticeInsertDao;


public class NoticeUpdateCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest Request = (HttpServletRequest) map.get("multiRequest");
		
		String N_TITLE = Request.getParameter("N_TITLE");
		String N_CONTENT =  Request.getParameter("N_CONTENT");
		int N_NUM = Integer.parseInt(Request.getParameter("N_NUM"));
		
		NoticeInsertDao dao = sqlSession.getMapper(NoticeInsertDao.class);
		dao.NoticeSelectDao(N_NUM);
		dao.NoUpdateDao(N_TITLE,N_CONTENT);
		
	}

}
