package com.springlec.base.dao;

import com.springlec.base.dto.NoticeInsertDto;

public interface NoticeInsertDao {
	//notice 입력
	public void NoticeInsertDao(String N_TITLE, String N_CONTENT);
	
	public NoticeInsertDto NoticeselectNumDao(int N_NUM);
	
	public void NoticeDateDao(int N_NUM , String user_email);

	//notice 수정하기 전 보기
	public NoticeInsertDto NoticeSelectDao(int N_NUM);

	//notice 수정
	public void NoUpdateDao(String N_TITLE, String N_CONTENT);
	
	public void NoUpdateDateDao(String NW_EDIT , String NOTICE_N_NUM);
}
