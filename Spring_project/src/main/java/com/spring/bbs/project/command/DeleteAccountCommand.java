package com.spring.bbs.project.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.EditProfileDao;

public class DeleteAccountCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		// TODO Auto-generated method stub

		String password = request.getParameter("pwdDelete");
		String email  = (String)session.getAttribute("email");
		
		EditProfileDao dao = new EditProfileDao();
		dao.deleteAccount(password, email);
	}

}
