package com.springlec.base.dto;

import java.sql.Date;

public class WriteTipDto {
	String USER_EMAIL;
	String TIP_T_NUM;
	Date TW_REGIST;
	
	public WriteTipDto(String uSER_EMAIL, String tIP_T_NUM, Date tW_REGIST) {
		super();
		USER_EMAIL = uSER_EMAIL;
		TIP_T_NUM = tIP_T_NUM;
		TW_REGIST = tW_REGIST;
	}

	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}

	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}

	public String getTIP_T_NUM() {
		return TIP_T_NUM;
	}

	public void setTIP_T_NUM(String tIP_T_NUM) {
		TIP_T_NUM = tIP_T_NUM;
	}

	public Date getTW_REGIST() {
		return TW_REGIST;
	}

	public void setTW_REGIST(Date tW_REGIST) {
		TW_REGIST = tW_REGIST;
	}
	
	
}
