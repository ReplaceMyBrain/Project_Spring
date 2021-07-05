package com.springproject.iamdeveloper.dao;

import java.util.ArrayList;

import com.springproject.iamdeveloper.dto.UserDto;

public interface LoginDao {
	
	//로그인
	public ArrayList<UserDto> loginDao(String email, String pwd);
	
	

}
