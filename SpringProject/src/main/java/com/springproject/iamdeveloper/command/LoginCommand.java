package com.springproject.iamdeveloper.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springproject.iamdeveloper.dao.LoginDao;
import com.springproject.iamdeveloper.dto.UserDto;

public class LoginCommand implements Command {

	@Override
	public void execute(Model model, SqlSession sqlSession, HttpSession session) {
		// TODO Auto-generated method stub
		System.out.println("여기는 로긴커맨드");
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		LoginDao dao = sqlSession.getMapper(LoginDao.class);
		ArrayList<UserDto> dto =dao.loginDao(request.getParameter("email"), request.getParameter("pwd"));
		System.out.println("여기는 로긴커맨드?");
		
		if(dto.size() == 0) {
			session.setAttribute("login", 1);

		}else {
			
			session.setAttribute("login", 0);
			session.setAttribute("email",dto.get(0).getEmail());
			session.setAttribute("admin",dto.get(0).getAdmin());
			session.setAttribute("deletedate",dto.get(0).getDeletedate());
			
		}
		
	}

}
