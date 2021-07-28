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
import com.springlec.base.command.ContentNoticeCommand;
import com.springlec.base.dao.ContentNoticeDao;

@Controller
public class NoticeContentController {
	
	@Autowired
	private SqlSession sqlSession;
	
	Command command = null;
	
	/*
	 * ----------------------------- 
	 * 21.07.05 seungyeon notice 상세페이지 
	 *   -----------------------------
	 */
	// notice - 상세페이지 불러오기
	@RequestMapping("/ContentViewNotice")
	//세션쓰면 같이 넣어줘
	public String ContentViewNotice(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("email", "123@naver.com");
		httpSession.setAttribute("admin", "1");
		model.addAttribute("request", request);
		command = new ContentNoticeCommand();
		command.execute(model, httpSession, sqlSession);
		return "ContentViewNotice";
	}
	// notice - 상세페이지 게시물 삭제하기
	@RequestMapping("/ContentViewNoticedelete")
	//세션쓰면 같이 넣어줘
	public String ContentViewNoticedelete(HttpServletRequest request, Model model) {
		ContentNoticeDao dao = sqlSession.getMapper(ContentNoticeDao.class);
		model.addAttribute("result", dao.contentDelete(request.getParameter("n_num")));
		return "ContentDeleteView";
	}
	// notice - Item - 상세페이지 댓글입력
	@RequestMapping("/NoticeCommentWrite")
	//세션쓰면 같이 넣어줘
	public String NoticeCommentWrite(HttpServletRequest request, Model model) {
		HttpSession httpSession = request.getSession();
		ContentNoticeDao dao = sqlSession.getMapper(ContentNoticeDao.class);
		model.addAttribute("result", dao.commentWrite(request.getParameter("n_num"), (String) httpSession.getAttribute("email"), request.getParameter("nc_content")));
		return "CommentWriteView";
	}
	// notice - 상세페이지 댓글 불러오기
	@RequestMapping("/NoticeCommentContent")
	//세션쓰면 같이 넣어줘
	public String NoticeCommentContent(HttpServletRequest request, Model model) {
		ContentNoticeDao dao = sqlSession.getMapper(ContentNoticeDao.class);
		model.addAttribute("commentcontent_view", dao.commentContent(request.getParameter("nc_num")));
		return "NoticeCommentContentView";
	}
	// notice - 상세페이지 댓글 수정하기
	@RequestMapping("/NoticeCommentModify")
	//세션쓰면 같이 넣어줘
	public String NoticeCommentModify(HttpServletRequest request, Model model) {
		ContentNoticeDao dao = sqlSession.getMapper(ContentNoticeDao.class);
		model.addAttribute("result", dao.commentModiey(request.getParameter("nc_num"), request.getParameter("nc_content")));
		return "CommentModifyView";
	}
	// notice - 상세페이지 댓글 삭제하기
	@RequestMapping("/NoticeCommentDelete")
	//세션쓰면 같이 넣어줘
	public String NoticeCommentDelete(HttpServletRequest request, Model model) {
		ContentNoticeDao dao = sqlSession.getMapper(ContentNoticeDao.class);
		model.addAttribute("result", dao.commentDelete(request.getParameter("nc_num")));
		return "CommentDeleteView";
	}
	
	
}
