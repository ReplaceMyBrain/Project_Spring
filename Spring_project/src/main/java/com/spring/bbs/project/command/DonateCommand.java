package com.spring.bbs.project.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.DonateDao;

public class DonateCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		// TODO Auto-generated method stub
		
		int intAmount = Integer.parseInt(request.getParameter("amount"));
		
		DonateDao dao = new DonateDao();
		dao.Donate(intAmount);
		
		
		//합계
		String sumDonate = Integer.toString(dao.DonateSum());	

		
		request.setAttribute("sumDonate", sumDonate); // 합계
		request.setAttribute("amount", intAmount); // 결과값

	}

}
