package com.springlec.base.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.MyPostDao;
import com.springlec.base.dao.ProfileDao;

public class LoadMyAllCommand implements Command {

	int numOfTuplesPerPage = 10;
	
	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		
		String currentUser = (String)httpSession.getAttribute("email");
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		int requestPage = 1;
		int offset = requestPage - 1;
		
		if ( request.getParameter("page") != null) {
			requestPage = Integer.parseInt(request.getParameter("page"));
			model.addAttribute("courrentPage", requestPage);
		}
		
		ProfileDao dao = sqlSession.getMapper(ProfileDao.class);
		MyPostDao listDao = sqlSession.getMapper(MyPostDao.class);
		
		int countedTuple = listDao.selectAllDao(currentUser, currentUser);
		ArrayList<Integer> pageList = calcNumOfPage(countedTuple);
		
		if (offset == 0) {
			offset *= numOfTuplesPerPage;
		}
		
		model.addAttribute("pageList", pageList);
		
		model.addAttribute("myList", listDao.myListDao(currentUser, offset, numOfTuplesPerPage));
		
		model.addAttribute("myprofile", dao.loadProfileDao(currentUser));
		model.addAttribute("count", Integer.toString(countedTuple));
		model.addAttribute("do", "profile");
		
	}
	
	public ArrayList<Integer> calcNumOfPage(int countedTuple) {
		ArrayList<Integer> arr = new ArrayList<Integer>();
		int calcPage = 0;
		if (countedTuple % numOfTuplesPerPage == 0) {
			calcPage = countedTuple / numOfTuplesPerPage;
		} else {
			calcPage = countedTuple / numOfTuplesPerPage + 1;
		}
		for (int i = 1; i <= calcPage; i++) {
			System.out.println(i);
			arr.add(i);
		}
		return arr;
	}

}
