package com.springproject.iamdeveloper.dao;

import java.util.ArrayList;

import com.springproject.iamdeveloper.dto.UserDto;

public interface SearchDao {

	//이메일찾기 
	public ArrayList<UserDto> emailSearch(String name, String tel);
	
	//비번찾기 
	public ArrayList<UserDto> pwdSearch(String email, String tel);
}
