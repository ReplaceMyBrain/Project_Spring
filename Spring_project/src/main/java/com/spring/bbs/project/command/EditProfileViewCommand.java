package com.spring.bbs.project.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.EditProfileDao;
import com.spring.bbs.project.dto.ProfileDto;

public class EditProfileViewCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {

		String email = (String)session.getAttribute("email");
		
		EditProfileDao dao =new EditProfileDao();
		ProfileDto dto = dao.loadProfile(email);
		System.out.println(email);
		
		request.setAttribute("profile", dto);
		
	}

}
