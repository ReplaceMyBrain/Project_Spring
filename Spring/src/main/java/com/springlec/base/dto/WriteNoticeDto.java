package com.springlec.base.dto;

import java.sql.Date;

public class WriteNoticeDto {
	String USER_EMAIL;
	String NOTICE_N_NUM;
	Date NW_REGIST;
	
	public WriteNoticeDto(String uSER_EMAIL, String nOTICE_N_NUM, Date nW_REGIST) {
		super();
		USER_EMAIL = uSER_EMAIL;
		NOTICE_N_NUM = nOTICE_N_NUM;
		NW_REGIST = nW_REGIST;
	}

	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}

	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}

	public String getNOTICE_N_NUM() {
		return NOTICE_N_NUM;
	}

	public void setNOTICE_N_NUM(String nOTICE_N_NUM) {
		NOTICE_N_NUM = nOTICE_N_NUM;
	}

	public Date getNW_REGIST() {
		return NW_REGIST;
	}

	public void setNW_REGIST(Date nW_REGIST) {
		NW_REGIST = nW_REGIST;
	}
	
	
}
