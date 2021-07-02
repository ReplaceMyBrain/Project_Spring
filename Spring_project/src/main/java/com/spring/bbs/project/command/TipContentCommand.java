package com.spring.bbs.project.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.bbs.project.dao.ItemInfoDao;
import com.spring.bbs.project.dao.TipDao;
import com.spring.bbs.project.dto.ItemInfoDto;
import com.spring.bbs.project.dto.TipDto;
import com.spring.bbs.project.filepath.FilePath;

public class TipContentCommand implements Command {
	
	FilePath  cv = new FilePath();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException {
		
		String T_NUM =request.getParameter("t_num");
		TipDao tipDao = new TipDao();
		TipDto tipDto = tipDao.read(T_NUM);
		
		//파일이 업로드되있는 상태라면 (이름+경로) - 경로를 해서 파일 이름만 추출해서 request로 전송
		if(tipDto.getT_image() != null) {
			String filePath = tipDto.getT_image();
			String fileName = filePath.substring(cv.jsp_project_filepath.length() + 1);
			request.setAttribute("fileName", fileName);
		}
		request.setAttribute("read", tipDto);

	}

}
