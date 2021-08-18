package com.springlec.base.dto;

public class TipInsertDto {
	int T_NUM;
	String T_TITLE;
	String T_CONTENT;
	String T_IMAGE;
	String T_CATEGORY;
	
	public TipInsertDto(int t_NUM, String t_TITLE, String t_CONTENT, String t_IMAGE, String t_CATEGORY) {
		super();
		T_NUM = t_NUM;
		T_TITLE = t_TITLE;
		T_CONTENT = t_CONTENT;
		T_IMAGE = t_IMAGE;
		T_CATEGORY = t_CATEGORY;
	}

	public int getT_NUM() {
		return T_NUM;
	}

	public void setT_NUM(int t_NUM) {
		T_NUM = t_NUM;
	}

	public String getT_TITLE() {
		return T_TITLE;
	}

	public void setT_TITLE(String t_TITLE) {
		T_TITLE = t_TITLE;
	}

	public String getT_CONTENT() {
		return T_CONTENT;
	}

	public void setT_CONTENT(String t_CONTENT) {
		T_CONTENT = t_CONTENT;
	}

	public String getT_IMAGE() {
		return T_IMAGE;
	}

	public void setT_IMAGE(String t_IMAGE) {
		T_IMAGE = t_IMAGE;
	}

	public String getT_CATEGORY() {
		return T_CATEGORY;
	}

	public void setT_CATEGORY(String t_CATEGORY) {
		T_CATEGORY = t_CATEGORY;
	}
	
	
}
