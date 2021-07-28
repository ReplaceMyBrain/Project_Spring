package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.NoticeDao;

public class LoadNoticeCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		NoticeDao dao = sqlSession.getMapper(NoticeDao.class);
		System.out.println(dao.listNoticeDao());
		model.addAttribute("list_notice", dao.listNoticeDao());
	}

}
