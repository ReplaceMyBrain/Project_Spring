package com.springlec.base.dao;

import java.util.ArrayList;

import com.springlec.base.dto.ContentItemDto;

public interface ContentItemDao {
	
	// 게시물 클릭시 상세페이지
	public ContentItemDto contentView(String stri_num); 
	
	// 게시물 삭제!!
	public int contentDelete(String stri_num);

	// 게시물 리뷰 작성
	public int commentWrite(String i_num, String user_email, String ic_content);

	// 게시물 리뷰 Lsit
	public ArrayList<ContentItemDto> commentSelect(String i_num, int start, int pageCnt);

	// list에서 사용하는 릴레이션이 가진 튜플의 총 갯수를 리턴한다.
	public int selectCommnetCnt(String itemInfo_iNo);

	// 상세페이지 리뷰 수정하기 클릭시 상세페이지
	public ContentItemDto commentContent(String ic_Num);

	// 게시물 리뷰 수정
	public int commentModiey(String ic_Num, String ic_content);

	// 게시물 리뷰 삭제
	public int commentDelete(String ic_num);

}
