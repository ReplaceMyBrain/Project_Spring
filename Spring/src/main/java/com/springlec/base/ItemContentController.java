package com.springlec.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.base.command.Command;
import com.springlec.base.command.ContentItemCommand;
import com.springlec.base.dao.ContentItemDao;

@Controller
public class ItemContentController {
	
	@Autowired
	private SqlSession sqlSession;
	
	Command command = null;
	
	/*
	 * ----------------------------- 
	 * 21.07.05 seungyeon Item 상세페이지 
	 *   -----------------------------
	 */
	// Item - 상세페이지 불러오기
	@RequestMapping("/ContentViewItem")
	//세션쓰면 같이 넣어줘
	public String ContentViewItem(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("email", "123@naver.com");
		httpSession.setAttribute("admin", "1");
		model.addAttribute("request", request);
		command = new ContentItemCommand();
		command.execute(model, httpSession, sqlSession);
		return "ContentViewItem";
	}
	// Item - 상세페이지 게시물 삭제하기
	@RequestMapping("/ContentViewItemdelete")
	//세션쓰면 같이 넣어줘
	public String ContentViewItemdelete(HttpServletRequest request, Model model) {
		ContentItemDao dao = sqlSession.getMapper(ContentItemDao.class);
		model.addAttribute("result", dao.contentDelete(request.getParameter("i_num")));
		return "ContentDeleteView";
	}
	// Item - Item - 상세페이지 댓글입력
	@RequestMapping("/CommentWriteItem")
	//세션쓰면 같이 넣어줘
	public String CommentWriteItem(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		ContentItemDao dao = sqlSession.getMapper(ContentItemDao.class);
		model.addAttribute("result", dao.commentWrite(request.getParameter("i_num"), (String) httpSession.getAttribute("email"), request.getParameter("ic_content")));
		return "CommentWriteView";
	}
	// Item - 상세페이지 댓글 불러오기
	@RequestMapping("/CommentContentItem")
	//세션쓰면 같이 넣어줘
	public String CommentContentItem(HttpServletRequest request, Model model) {
		ContentItemDao dao = sqlSession.getMapper(ContentItemDao.class);
		model.addAttribute("commentcontent_view", dao.commentContent(request.getParameter("ic_num")));
		return "CommentContentView";
	}
	// Item - 상세페이지 댓글 수정하기
	@RequestMapping("/CommentModifyItem")
	//세션쓰면 같이 넣어줘
	public String CommentModifyItem(HttpServletRequest request, Model model) {
		ContentItemDao dao = sqlSession.getMapper(ContentItemDao.class);
		model.addAttribute("result", dao.commentModiey(request.getParameter("ic_num"), request.getParameter("ic_content")));
		return "CommentModifyView";
	}
	// Item - 상세페이지 댓글 삭제하기
	@RequestMapping("/CommentDeleteItem")
	//세션쓰면 같이 넣어줘
	public String CommentDeleteItem(HttpServletRequest request, Model model) {
		ContentItemDao dao = sqlSession.getMapper(ContentItemDao.class);
		model.addAttribute("result", dao.commentDelete(request.getParameter("ic_num")));
		return "CommentDeleteView";
	}
	
}
