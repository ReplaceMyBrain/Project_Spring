package com.springproject.iamdeveloper.command;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface Command {
	
	void execute(Model model, SqlSession sqlSession, HttpSession session);
}
