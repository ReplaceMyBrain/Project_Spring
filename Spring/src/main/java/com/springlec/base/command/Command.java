package com.springlec.base.command;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface Command {
	
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession);

}

