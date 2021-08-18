package com.springlec.base.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.springlec.base.dao.ItemInfoDao;
import com.springlec.base.dto.ItemInfoDto;


public class ItemInfoSelectCommand implements Command {
private ItemInfoDao dao = null;
	
	@Autowired
	public void auto(ItemInfoDao dao) {
		this.dao = dao;
	}
	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		ItemInfoDao dao = sqlSession.getMapper(ItemInfoDao.class);
//		String i_num = request.getParameter("i_num");
//		model.addAttribute("i_num", i_num);
//		model.addAttribute("ItemInfoContent", dao.ItemSelectDao(i_num));

	}

}
