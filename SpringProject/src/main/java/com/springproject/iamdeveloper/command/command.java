package com.springproject.iamdeveloper.command;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface Command {

	void execute(Model model, SqlSession sqlSession, HttpSession session);
}
