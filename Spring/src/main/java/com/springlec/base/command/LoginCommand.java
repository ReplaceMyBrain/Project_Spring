package com.springlec.base.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.LoginDao;
import com.springlec.base.dto.UserDto;


public class LoginCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		System.out.println("여기는 로긴커맨드");
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		LoginDao dao = sqlSession.getMapper(LoginDao.class);
		ArrayList<UserDto> dto =dao.loginDao(request.getParameter("email"), request.getParameter("pwd"));
		System.out.println("여기는 로긴커맨드?");
		
		if(dto.size() == 0) {
			httpSession.setAttribute("login", 1);

		}else {
			
			httpSession.setAttribute("login", 0);
			httpSession.setAttribute("email",dto.get(0).getEmail());
			httpSession.setAttribute("admin",dto.get(0).getAdmin());
			httpSession.setAttribute("deletedate",dto.get(0).getDeletedate());
			
		}
		
	}

}
