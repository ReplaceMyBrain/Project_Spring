package com.springlec.base.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.base.dao.AdminUserDao;
import com.springlec.base.dao.ContentItemDao;
import com.springlec.base.dao.ViewsDao;
import com.springlec.base.dto.ContentItemDto;

public class ContentItemCommand implements Command {
	//페이지당 표시할 게시글의 수
	int numOfTuplesPerPage = 5;

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// TODO Auto-generated method stub
		// DB에서 전체정보 읽어서 attribute로 jsp에 전달하기
		// 사용자가 요청한 페이지 번호 초기값은 가장 최신글을 보여주는 1
		ViewsDao viewDao = sqlSession.getMapper(ViewsDao.class);
		int requestPage = 1;
		
		String i_num = request.getParameter("i_num");
		int number = Integer.parseInt(i_num);
		viewDao.countingItemView(number);
		
		ContentItemDao dao = sqlSession.getMapper(ContentItemDao.class);

		// 클릭된 게시물 상세페이지 보여주기
		ContentItemDto dto = dao.contentView(i_num);
		
		String content = dto.geti_content().replaceAll("\n", "<br>");
		dto.seti_content(content);
		
		model.addAttribute("content_view", dto);
		
		model.addAttribute("stranger", dto.getuser_email());
		
		// 최초 목록 진입시 page값을 넘겨주지 않음 -> 초기값인 1페이지 목록을 보여줌
		// 목록에서 page요청 -> 해당 페이지 번호로 requestPage 설정
		if (request.getParameter("page") != null) {
			requestPage = Integer.parseInt(request.getParameter("page"));
			// content에서 목록보기 요청시 최근 페이지 목록으로 돌아가기 위해 세션에 저
			model.addAttribute("courrentPage", requestPage);
		}

		// 반환되는 총 튜플의 수
		int countedTuple = dao.selectCommnetCnt(i_num);
		// 페이지 목록 (1...n)
		ArrayList<Integer> pageList = calcNumOfPage(countedTuple);
		// 페이지 목록을 세션에 담는다. *list에 진입하면 무조건 세션이 갱신되므로 새 글이 생겨도 최신화가 된다.
		model.addAttribute("pageList", pageList);
		
		int offset = requestPage-1;
		
		if (offset != 0) {
			offset *= numOfTuplesPerPage;
		}
		
		model.addAttribute("comment_view", dao.commentSelect(i_num, offset, numOfTuplesPerPage));

	}

	// 총 튜플수를 받아 페이지당 표시할 게시글의 수로 나누어서 페이지수를 계산하고 jsp에서 for-each문을 돌리기 위해 배열에 담는다
	public ArrayList<Integer> calcNumOfPage(int countedTuple) {
		ArrayList<Integer> arr = new ArrayList<Integer>();
		int calcPage = 0;
		// 튜플의 총 갯수가 딱 맞아떨어지는 경우를 대비해 조건분기
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
