package com.springlec.base.dao;

import java.util.ArrayList;

import com.springlec.base.dto.UserDto;


public interface LoginDao {
	
	//로그인
	public ArrayList<UserDto> loginDao(String email, String pwd);
	
	

}
