package com.springlec.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.command.Command;
import com.springlec.base.command.LoadAccItemCommand;
import com.springlec.base.command.LoadCodeTipCommand;
import com.springlec.base.command.LoadComItemCommand;
import com.springlec.base.command.LoadDeskItemCommand;
import com.springlec.base.command.LoadInfoTipCommand;
import com.springlec.base.command.LoadItemsCommand;
import com.springlec.base.command.LoadNoticeCommand;
import com.springlec.base.command.LoadOtherItemCommand;
import com.springlec.base.command.LoadOtherTipCommand;
import com.springlec.base.command.LoadProtoTipCommand;
import com.springlec.base.command.LoadTipsCommand;
import com.springlec.base.command.SearchingItemCommand;
import com.springlec.base.command.SearchingTipCommand;

@Controller
public class MainController {
	
	Command command = null;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/list")
	public String list1(Model model, HttpServletRequest request) {
		
		model.addAttribute("request", request);
		//model.addAttribute("postsCount", 1);
		HttpSession session= request.getSession();
		
		command = new LoadItemsCommand();
		command.execute(model, session, sqlSession);
		return "ListItem";
	}
	
	@RequestMapping("/list2")
	public String list2(Model model, HttpServletRequest request, HttpSession httpSession) {
		
		model.addAttribute("request", request);
		command = new LoadTipsCommand();
		command.execute(model, httpSession, sqlSession);
		return "ListTip";
	}
	
	@RequestMapping("/listNotice")
	public String listNotice(HttpServletRequest request, Model model, HttpSession httpSession) {
		
		model.addAttribute("request", request);
		command = new LoadNoticeCommand();
		command.execute(model, httpSession, sqlSession);
		return "ListNotice";
	}
	
	@RequestMapping("/ComItem")
	public String comItem(Model model, HttpServletRequest request) {
		
		model.addAttribute("request", request);
		HttpSession session= request.getSession();
		
		command = new LoadComItemCommand();
		command.execute(model, session, sqlSession);
		return "ListItem";
	}
	
	@RequestMapping("/AccItem")
	public String accItem(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new LoadAccItemCommand();
		command.execute(model, session, sqlSession);
		return "ListItem";
	}
	
	@RequestMapping("/DeskItem")
	public String deskItem(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new LoadDeskItemCommand();
		command.execute(model, session, sqlSession);
		return "ListItem";
	}
	
	@RequestMapping("/OtherItem")
	public String otherItem(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new LoadOtherItemCommand();
		command.execute(model, session, sqlSession);
		return "ListItem";
	}
	
	@RequestMapping("/SearchItem")
	public String SearchItem(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new SearchingItemCommand();
		command.execute(model, session, sqlSession);
		return "ListItem";
	}
	
	@RequestMapping("/CodeTip")
	public String codeTip(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new LoadCodeTipCommand();
		command.execute(model, session, sqlSession);
		return "ListTip";
	}
	
	@RequestMapping("/ProtoTip")
	public String protoTip(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new LoadProtoTipCommand();
		command.execute(model, session, sqlSession);
		return "ListTip";
	}
	
	@RequestMapping("/InfoTip")
	public String infoTip(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new LoadInfoTipCommand();
		command.execute(model, session, sqlSession);
		return "ListTip";
	} 
	
	@RequestMapping("/OtherTip")
	public String otherTip(Model model, HttpServletRequest request) {
		HttpSession session= request.getSession();
		model.addAttribute("request", request);
		
		command = new LoadOtherTipCommand();
		command.execute(model, session, sqlSession);
		return "ListTip";
	}
	
	@RequestMapping("/SearchTip")
	public String searchTip(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		model.addAttribute("request", request);
		
		command = new SearchingTipCommand();
		command.execute(model, session, sqlSession);
		return "ListTip";
	}
	
}
