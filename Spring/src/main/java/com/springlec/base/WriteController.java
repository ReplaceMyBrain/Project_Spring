package com.springlec.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.springlec.base.command.Command;
import com.springlec.base.command.ItemInfoInsertCommand;
import com.springlec.base.command.ItemInfoSelectCommand;
import com.springlec.base.command.ItemUpdateCommand;
import com.springlec.base.command.NoticeInsertCommand;
import com.springlec.base.command.NoticeSelectCommand;
import com.springlec.base.command.NoticeUpdateCommand;
import com.springlec.base.command.TipInsertCommand;
import com.springlec.base.command.TipSelectCommand;
import com.springlec.base.command.TipUpdateCommand;
import com.springlec.base.dao.ItemInfoDao;
import com.springlec.base.dao.TipInsertDao;

@Controller
public class WriteController {
	
	@Autowired
	private SqlSession sqlSession;
	
	Command command = null;
	@RequestMapping("/TipViewBoard")
	private String TipView() {
		System.out.println("TipViewBoard");
		return "TipViewBoard";
	}
	
	@RequestMapping("TipInsert")
	private String TipInsert(MultipartHttpServletRequest multiRequest , Model model) {
		System.out.println("TipInsert");
		HttpSession httpSession = multiRequest.getSession();
		model.addAttribute("multiRequest",multiRequest);
		command = new TipInsertCommand();
		command.execute(model, httpSession, sqlSession);
		return "redirect:list2";
	}
	
	@RequestMapping("/TipContentBoard")
	private String TipContentBoard(HttpServletRequest request, Model model) {
		System.out.println("TipContentBoard");
//		HttpSession httpSession = multiRequest.getSession();
//		model.addAttribute("multiRequest",multiRequest);
		
		HttpSession httpSession = request.getSession();
		model.addAttribute("request",request);
		TipInsertDao dao = sqlSession.getMapper(TipInsertDao.class);
		String t_num = request.getParameter("t_num");
		String t_title = request.getParameter("t_title");
		String t_image = request.getParameter("t_image");
		String t_content = request.getParameter("t_content");
		model.addAttribute("t_num", t_num);
		model.addAttribute("t_title", t_title);
		model.addAttribute("t_image", t_image);
		model.addAttribute("t_content", t_content);
		command = new TipSelectCommand();
		command.execute(model, httpSession, sqlSession);
		return "TipContentBoard";
	}
	
	@RequestMapping("TipUpdate")
	private String TipUpdate(MultipartHttpServletRequest multiRequest, Model model) {
		HttpSession httpSession = multiRequest.getSession();
		model.addAttribute("multiRequest",multiRequest);
		command = new TipUpdateCommand();
		command.execute(model, httpSession, sqlSession);
		return "redirect:list2";
	}
	
	@RequestMapping("/ItemInfoView")
	private String ItemInfoView() {
		System.out.println("ItemInfoView");
		return "ItemInfoView";
	}

	@RequestMapping("ItemInfoInsert")
	private String ItemInfoInsert(MultipartHttpServletRequest multiRequest, Model model) {
		System.out.println("ItemInfoInsert");
		HttpSession httpSession = multiRequest.getSession();
		model.addAttribute("multiRequest",multiRequest);
		command = new ItemInfoInsertCommand();
		command.execute(model, httpSession, sqlSession);
		return "redirect:list";
	}
	@RequestMapping("/ItemInfoContent")	
	private String ItemInfoSelect(HttpServletRequest request, Model model) {
		System.out.println("ItemInfoUpdate");
//		HttpSession httpSession = multiRequest.getSession();
//		model.addAttribute("multiRequest",multiRequest);
		HttpSession httpSession = request.getSession();
		model.addAttribute("request",request);
		ItemInfoDao dao = sqlSession.getMapper(ItemInfoDao.class);
		String i_num = request.getParameter("i_num");
		String i_title = request.getParameter("i_title");
		String i_image = request.getParameter("i_image");
		String i_content = request.getParameter("i_content");
		model.addAttribute("i_num", i_num);
		model.addAttribute("i_title", i_title);
		model.addAttribute("i_image", i_image);
		model.addAttribute("i_content", i_content);
		
		command = new ItemInfoSelectCommand();
		command.execute(model, httpSession, sqlSession);
		return "ItemInfoContent";
		
		
	}
	
	@RequestMapping("ItemUpdate")
	private String ItemInfoUpdate(MultipartHttpServletRequest multiRequest, Model model) {
		HttpSession httpSession = multiRequest.getSession();
		model.addAttribute("multiRequest",multiRequest);
		command = new ItemUpdateCommand();
		command.execute(model, httpSession, sqlSession);
		return "redirect:list";
	}
	
	@RequestMapping("/NoticeView")
	private String NoticeView() {
		return "NoticeView";
	}
	
	@RequestMapping("NoticeInsert")
	private String NoticeInsert(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		model.addAttribute("request",request);
		command = new NoticeInsertCommand();
		command.execute(model, httpSession, sqlSession);
		return "Redirect:listNotice";
	}
	
	@RequestMapping("/NoticeContent")	
	private String NoticeContent(HttpServletRequest request, Model model) {
		System.out.println("NoticeUpdate");
		HttpSession httpSession = request.getSession();
		System.out.println("111---");
		model.addAttribute("request",request);
		command = new NoticeSelectCommand();
		command.execute(model, httpSession, sqlSession);
		return "NoticeContent";
	}
	
	@RequestMapping("NoUpdate")
	private String NoUpdate(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		model.addAttribute("multiRequest",request);
		command = new NoticeUpdateCommand();
		command.execute(model, httpSession, sqlSession);
		return "Redirect:listNotice";
	}
}
