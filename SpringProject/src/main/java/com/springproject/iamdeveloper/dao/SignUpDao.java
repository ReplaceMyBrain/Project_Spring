package com.springproject.iamdeveloper.dao;

import java.util.ArrayList;

import com.springproject.iamdeveloper.dto.UserDto;

public interface SignUpDao {

	//회원가입
	public void signupDao(String email, String name, String pwd, String address ,String tel, String git);
	
	//Ajax
	public ArrayList<UserDto> emailCheck(String email);
	public ArrayList<UserDto> telCheck(String tel);
}
