package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.ItemInfoDao;
import com.springlec.base.dao.NoticeInsertDao;
import com.springlec.base.dto.NoticeInsertDto;


public class NoticeInsertCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String user_email = request.getParameter("Email");
		String N_TITLE = request.getParameter("N_TITLE");
		String N_CONTENT =  request.getParameter("N_CONTENT");
	//	int N_NUM = Integer.parseInt(request.getParameter("N_NUM"));
		
		NoticeInsertDao dao = sqlSession.getMapper(NoticeInsertDao.class);
		dao.NoticeInsertDao(N_TITLE, N_CONTENT);
		
		System.out.println("2");
	//	dao.NoticeselectNumDao(N_NUM);
	//	dao.NoticeDateDao(N_NUM, user_email);

		
		}

}
