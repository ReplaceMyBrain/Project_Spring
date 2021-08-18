package com.springlec.base.dao;

import com.springlec.base.dto.ItemInfoDto;

public interface ItemInfoDao {
	//item 입력
		public int ItemInfoInsertDao(String I_TITLE, String I_CONTENT, String I_IMAGE, String I_CATEGORY);
		
		public ItemInfoDto ItemselectNumDao(int I_NUM);
		
		public void ItemDateDao(int I_NUM , String user_email);

		//item 수정하기 전 보기
		public ItemInfoDto ItemSelectDao(int I_NUM);

		//item 수정
		public void ItemUpdateDao(String I_TITLE, String I_CONTENT, String I_IMAGE, String I_CATEGORY);
}
