package com.springlec.base.dao;

import com.springlec.base.dto.TipInsertDto;

public interface TipInsertDao {
	//Tip 입력
		public void TipInsertDao(String T_TITLE, String T_CONTENT, String T_IMAGE, String T_CATEGORY);
		
		public TipInsertDto TipselectNumDao(int T_NUM);
		
		public void TipUpDateDao(int T_NUM, String user_email);
		
		

		//Tip수정하기 전 보기
		public TipInsertDto TipSelectDao(int T_NUM);

		//Tip 수정
		public void UpdateDao(String T_TITLE, String T_CONTENT, String  T_IMAGE, String T_CATEGORY);

		public void UpdateDateDao(String TW_EDIT, String TIP_T_NUM);
}
