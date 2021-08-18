package com.springlec.base.command;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.springlec.base.dao.ItemInfoDao;

public class ItemInfoInsertCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) map.get("multiRequest");
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String root_path = httpSession.getServletContext().getRealPath("/");
		System.out.println("root_path: "+ root_path);
		
		String attach_path = "resources/save/";
		String upload_path = root_path + attach_path; 
		
		//폴더 없을 때 폴더 생성하기
		if(!new File(upload_path).exists()) {
			new File(upload_path).mkdirs();
		}
		
		MultipartFile mulfile = multiRequest.getFile("I_IMAGE");
		String OriginFileName = mulfile.getOriginalFilename();  
		long fileSize = mulfile.getSize();
		
		String saveFile = upload_path + OriginFileName;
		
		try{
			mulfile.transferTo(new File(saveFile));
		}catch(IllegalStateException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		String save_t = "save/"+OriginFileName;
	//	String user_email = request.getParameter("Email");
		String I_TITLE = multiRequest.getParameter("I_TITLE");
		String I_CONTENT =  multiRequest.getParameter("I_CONTENT");
		String I_CATEGORY = multiRequest.getParameter("I_CATEGORY");
	//	int I_NUM = Integer.parseInt(multiRequest.getParameter("I_NUM"));
		
		ItemInfoDao dao = sqlSession.getMapper(ItemInfoDao.class);
		dao.ItemInfoInsertDao(I_TITLE, I_CONTENT, save_t,I_CATEGORY);
	//	dao.ItemselectNumDao(I_NUM);
	//	dao.ItemDateDao(I_NUM, user_email);
	}

}
