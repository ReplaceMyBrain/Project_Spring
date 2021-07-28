package com.springlec.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.command.Command;
import com.springlec.base.command.ContentTipCommand;
import com.springlec.base.dao.ContentItemDao;
import com.springlec.base.dao.ContentTipDao;


@Controller
public class TipContentController {
	
	@Autowired
	private SqlSession sqlSession;
	
	Command command = null;

	/*
	 * ----------------------------- 
	 * 21.07.05 seungyeon tip 상세페이지 
	 *   -----------------------------
	 */
	// tip - 상세페이지 불러오기
	@RequestMapping("/ContentViewTip")
	//세션쓰면 같이 넣어줘
	public String ContentViewTip(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		model.addAttribute("request", request);
		command = new ContentTipCommand();
		command.execute(model, httpSession, sqlSession);
		return "ContentViewTip";
	}
	
	// tip - 상세페이지 게시물 삭제하기
	@RequestMapping("/ContentViewTipdelete")
	//세션쓰면 같이 넣어줘
	public String ContentViewTipdelete(HttpServletRequest request, Model model) {
		ContentTipDao dao = sqlSession.getMapper(ContentTipDao.class);
		model.addAttribute("result", dao.contentDelete(request.getParameter("t_num")));
		return "ContentDeleteView";
	}
	
	// tip - 상세페이지 댓글입력
	@RequestMapping("/TipCommentWrite")
	//세션쓰면 같이 넣어줘
	public String TipCommentWrite(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		ContentTipDao dao = sqlSession.getMapper(ContentTipDao.class);
		model.addAttribute("result", dao.commentWrite(request.getParameter("t_num"), (String) httpSession.getAttribute("email"), request.getParameter("tc_content")));
		return "CommentWriteView";
	}
	
	// tip - 상세페이지 댓글 불러오기
	@RequestMapping("/TipCommentContent")
	//세션쓰면 같이 넣어줘
	public String TipCommentContent(HttpServletRequest request, Model model) {
		ContentTipDao dao = sqlSession.getMapper(ContentTipDao.class);
		model.addAttribute("commentcontent_view", dao.commentContent(request.getParameter("tc_num")));
		return "TipCommentContentView";
	}
	
	// tip - 상세페이지 댓글 수정하기
	@RequestMapping("/TipCommentModify")
	//세션쓰면 같이 넣어줘
	public String TipCommentModify(HttpServletRequest request, Model model) {
		ContentTipDao dao = sqlSession.getMapper(ContentTipDao.class);
		model.addAttribute("result", dao.commentModiey(request.getParameter("tc_num"), request.getParameter("tc_content")));
		return "CommentModifyView";
	}
	
	// tip - 상세페이지 댓글 삭제하기
	@RequestMapping("/TipCommentDelete")
	//세션쓰면 같이 넣어줘
	public String TipCommentDelete(HttpServletRequest request, Model model) {
		ContentTipDao dao = sqlSession.getMapper(ContentTipDao.class);
		model.addAttribute("result", dao.commentDelete(request.getParameter("tc_num")));
		return "CommentDeleteView";
	}	
	
}
