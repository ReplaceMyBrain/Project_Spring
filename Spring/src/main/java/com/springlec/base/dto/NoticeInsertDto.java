package com.springlec.base.dto;

public class NoticeInsertDto {
	int N_NUM;
	String N_TITLE;
	String N_CONTENT;
	
	public NoticeInsertDto(int n_NUM, String n_TITLE, String n_CONTENT) {
		super();
		N_NUM = n_NUM;
		N_TITLE = n_TITLE;
		N_CONTENT = n_CONTENT;
	}

	public int getN_NUM() {
		return N_NUM;
	}

	public void setN_NUM(int n_NUM) {
		N_NUM = n_NUM;
	}

	public String getN_TITLE() {
		return N_TITLE;
	}

	public void setN_TITLE(String n_TITLE) {
		N_TITLE = n_TITLE;
	}

	public String getN_CONTENT() {
		return N_CONTENT;
	}

	public void setN_CONTENT(String n_CONTENT) {
		N_CONTENT = n_CONTENT;
	}
	
	
}
