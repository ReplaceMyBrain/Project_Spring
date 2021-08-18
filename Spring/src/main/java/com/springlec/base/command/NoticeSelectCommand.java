package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.springlec.base.dao.NoticeInsertDao;
import com.springlec.base.dao.TipInsertDao;
import com.springlec.base.dto.NoticeInsertDto;


public class NoticeSelectCommand implements Command {
		private NoticeInsertDao dao = null;
	
			@Autowired
			public void auto(NoticeInsertDao dao) {
					this.dao = dao;
			}
			
	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		
		NoticeInsertDao dao = sqlSession.getMapper(NoticeInsertDao.class);
		model.addAttribute("NoticeUpdate", dao.NoticeSelectDao(Integer.parseInt(request.getParameter("N_NUM"))));
	}

}
