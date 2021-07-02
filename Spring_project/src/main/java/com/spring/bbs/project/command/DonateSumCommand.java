package com.spring.bbs.project.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.DonateDao;

public class DonateSumCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		
		DonateDao dao = new DonateDao();
		
		String sumDonate = Integer.toString(dao.DonateSum());	
		
		request.setAttribute("sumDonate", sumDonate);

	}

}
