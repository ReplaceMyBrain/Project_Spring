package com.springproject.iamdeveloper.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springproject.iamdeveloper.dao.LoginDao;
import com.springproject.iamdeveloper.dto.UserDto;

public class PwdSearchCommand implements Command {

	@Override
	public void execute(Model model, SqlSession sqlSession, HttpSession session) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		LoginDao dao = sqlSession.getMapper(LoginDao.class);
		ArrayList<UserDto> dto =dao.loginDao(request.getParameter("email"), request.getParameter("tel"));
		
		if(dto.size() == 0) {
			session.setAttribute("PS", 0);

		}else if (dto.get(0).getDeletedate() == null) {
			session.setAttribute("PS", 1);
			session.setAttribute("pwdSearch", dto.get(0).getPw());
			
		}else {
			session.setAttribute("PS", 2);
		}
		
	}

}
