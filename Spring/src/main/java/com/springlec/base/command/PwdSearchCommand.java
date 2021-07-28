package com.springlec.base.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.SearchDao;
import com.springlec.base.dto.UserDto;


public class PwdSearchCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		SearchDao dao = sqlSession.getMapper(SearchDao.class);
		ArrayList<UserDto> dto =dao.pwdSearch(request.getParameter("email"), request.getParameter("tel"));
		
		if(dto.size() == 0) {
			httpSession.setAttribute("PS", 0);
		}else if (dto.get(0).getDeletedate() == null) {
			httpSession.setAttribute("PS", 1);
			httpSession.setAttribute("pwdSearch", dto.get(0).getPw());
			
		}else {
			httpSession.setAttribute("PS", 2);
		}
		
	}

}
