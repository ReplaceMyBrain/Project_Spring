package com.springlec.base.dto;

import java.sql.Date;

public class WriteItemDto {
	String USER_EMAIL;
	String ITEM_I_NUM;
	Date IW_REGIST;
	
	public WriteItemDto(String uSER_EMAIL, String iTEM_I_NUM, Date iW_REGIST) {
		super();
		USER_EMAIL = uSER_EMAIL;
		ITEM_I_NUM = iTEM_I_NUM;
		IW_REGIST = iW_REGIST;
	}

	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}

	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}

	public String getITEM_I_NUM() {
		return ITEM_I_NUM;
	}

	public void setITEM_I_NUM(String iTEM_I_NUM) {
		ITEM_I_NUM = iTEM_I_NUM;
	}

	public Date getIW_REGIST() {
		return IW_REGIST;
	}

	public void setIW_REGIST(Date iW_REGIST) {
		IW_REGIST = iW_REGIST;
	}
	
	
}
