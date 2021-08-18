package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.springlec.base.dao.TipInsertDao;

public class TipSelectCommand implements Command {
	private TipInsertDao dao = null;
	
	@Autowired
	public void auto(TipInsertDao dao) {
		this.dao = dao;
	}
	
	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) map.get("multiRequest");
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		TipInsertDao dao = sqlSession.getMapper(TipInsertDao.class);
	//	model.addAttribute("TipUpdateBoard", dao.TipSelectDao(Integer.parseInt(multiRequest.getParameter("T_NUM"))));
	}

}
