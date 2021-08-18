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

import com.springlec.base.dao.TipInsertDao;

public class TipInsertCommand implements Command {

	@Override
	public void execute(Model model, HttpSession httpSession, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) map.get("multiRequest");
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String root_path = httpSession.getServletContext().getRealPath("/");
		System.out.println("root_path: "+ root_path);
		
		String attach_path = "resources/save_t/";
		String upload_path = root_path + attach_path; 
		
		//폴더 없을 때 폴더 생성하기
		if(!new File(upload_path).exists()) {
			new File(upload_path).mkdirs();
		}
		
		MultipartFile mulfile = multiRequest.getFile("T_IMAGE");
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
		
		String save_t = "save_t/"+OriginFileName;
	//	String user_email = request.getParameter("Email");
		
		String T_TITLE = multiRequest.getParameter("T_TITLE");
		String T_CONTENT =  multiRequest.getParameter("T_CONTENT");
		String T_CATEGORY = multiRequest.getParameter("T_CATEGORY");
	//	int T_NUM = Integer.parseInt(multiRequest.getParameter("T_NUM"));
		
		TipInsertDao dao = sqlSession.getMapper(TipInsertDao.class);
		dao.TipInsertDao(T_TITLE, T_CONTENT,save_t,T_CATEGORY);
	//	dao.TipSelectDao(T_NUM);
	//	dao.TipUpDateDao(T_NUM, T_CATEGORY);
	}

}
