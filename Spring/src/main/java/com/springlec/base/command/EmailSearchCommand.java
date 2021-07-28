package com.springlec.base.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.SearchDao;
import com.springlec.base.dto.UserDto;


public class EmailSearchCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		SearchDao dao = sqlSession.getMapper(SearchDao.class);
		ArrayList<UserDto> dto =dao.emailSearch(request.getParameter("name"), request.getParameter("tel"));
		
		System.out.println(dto.size());
		
		if(dto.size() == 0) {
			httpSession.setAttribute("ES", 0);	
		}else if (dto.get(0).getDeletedate() == null) {
			httpSession.setAttribute("ES", 1);
			httpSession.setAttribute("emailSearch", dto.get(0).getEmail());
		}else {
			httpSession.setAttribute("ES", 2);
			httpSession.setAttribute("emailSearch", dto.get(0).getEmail());
		}
		
	}

}	
