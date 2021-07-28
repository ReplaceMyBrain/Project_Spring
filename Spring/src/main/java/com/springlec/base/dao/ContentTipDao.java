package com.springlec.base.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.springlec.base.dto.ContentTipDto;

public interface ContentTipDao {

	// 게시물 클릭시 상세페이지
	public ContentTipDto contentView(String strt_num);

	// 게시물 삭제!!
	public int contentDelete(String strt_num);

	// 게시물 리뷰 작성
	public int commentWrite(String tip_t_num, String user_email, String tc_content);
	
	// 게시물 리뷰 Lsit
	public ArrayList<ContentTipDto> commentSelect(String t_num, int start, int pageCnt);

	// list에서 사용하는 릴레이션이 가진 튜플의 총 갯수를 리턴한다.
	public int selectCommnetCnt(String tip_t_num);

	// 상세페이지 리뷰 수정하기 클릭시 상세페이지
	public ContentTipDto commentContent(String tc_Num);

	// 게시물 리뷰 수정
	public int commentModiey(String tc_num, String tc_content);

	// 게시물 리뷰 삭제
	public int commentDelete(String tc_num);
}
