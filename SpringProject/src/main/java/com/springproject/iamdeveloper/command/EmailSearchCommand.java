package com.springproject.iamdeveloper.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springproject.iamdeveloper.dao.LoginDao;
import com.springproject.iamdeveloper.dto.UserDto;

public class EmailSearchCommand implements Command {

	@Override
	public void execute(Model model, SqlSession sqlSession, HttpSession session) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		LoginDao dao = sqlSession.getMapper(LoginDao.class);
		ArrayList<UserDto> dto =dao.loginDao(request.getParameter("name"), request.getParameter("tel"));
		
		if(dto.size() == 0) {
			session.setAttribute("ES", 0);

		}else if (dto.get(0).getDeletedate() == null) {
			session.setAttribute("ES", 1);
			session.setAttribute("emailSearch", dto.get(0).getEmail());
		}else {
			session.setAttribute("ES", 2);
			session.setAttribute("emailSearch", dto.get(0).getEmail());
		}
		
	}

}	
