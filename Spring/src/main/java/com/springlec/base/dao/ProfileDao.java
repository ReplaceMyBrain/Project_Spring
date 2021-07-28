package com.springlec.base.dao;

import org.springframework.stereotype.Repository;

import com.springlec.base.dto.UserDto;

@Repository
public interface ProfileDao {
	public UserDto loadProfileDao(String userId);
}
