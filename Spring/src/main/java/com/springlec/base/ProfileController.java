package com.springlec.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.command.Command;
import com.springlec.base.command.LoadMyAllCommand;
import com.springlec.base.command.LoadMyItemCommand;
import com.springlec.base.command.LoadMyTipCommand;
import com.springlec.base.command.LoadUserInfo;
import com.springlec.base.command.LoadUsersItem;
import com.springlec.base.command.LoadUsersTip;

@Controller
public class ProfileController {
	
	@Autowired
	SqlSession sqlSession;
	
	Command command = null;
	
	@RequestMapping("profile")
	public String profile(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		HttpSession session= request.getSession();
		
		command = new LoadMyAllCommand();
		command.execute(model, session, sqlSession);
		
		return "Profile";
	}
	
	@RequestMapping("profileOnlyTool")
	public String profileOnlyTool(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		HttpSession session= request.getSession();
		
		command = new LoadMyItemCommand();
		command.execute(model, session, sqlSession);
		
		return "Profile";
	}
	
	@RequestMapping("profileOnlyIdea")
	public String profileOnlyIdea(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		HttpSession session= request.getSession();
		
		command = new LoadMyTipCommand();
		command.execute(model, session, sqlSession);
		
		return "Profile";
	}
	
	// 다른회원 정보보기
	@RequestMapping("userProfile")
	public String userProfile(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		
		command = new LoadUserInfo();
		command.execute(model, session, sqlSession);
		return "UserPage";
	}
	
	@RequestMapping("userOnlyItem")
	public String userOnlyItem(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		
		command = new LoadUsersItem();
		command.execute(model, session, sqlSession);
		return "UserPageItem";
	}
	
	@RequestMapping("userOnlyTip")
	public String userOnlyTip(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		
		command = new LoadUsersTip();
		command.execute(model, session, sqlSession);
		return "UserPageItem";
	}
	
	
}
