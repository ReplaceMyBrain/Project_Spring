package com.springlec.base.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

import com.springlec.base.dto.AdminUserDto;

@Repository
public interface AdminUserDao {

	// user List
	public ArrayList<AdminUserDto> userSelect(int start, int pageCnt);

	// list에서 사용하는 릴레이션이 가진 튜플의 총 갯수를 리턴한다.
	public int selectUserCnt() ;

	// user recover 수정
	public int userRecover(String user_email);

	// user 삭제
	public int userDelete(String user_email) ;

	// user search List
	public ArrayList<AdminUserDto> userSelect2(String searching, int start, int pageCnt);

	// search list에서 사용하는 릴레이션이 가진 튜플의 총 갯수를 리턴한다.
	public int selectUserCnt2(String searching);

}
