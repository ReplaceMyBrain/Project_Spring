package com.springlec.base.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.springlec.base.dto.PostDto;

@Repository
public interface MyPostDao {

	public ArrayList<PostDto> myListDao(String userId, int start, int pageCn);
	
	public ArrayList<PostDto> myItemListDao(String userId, int start, int pageCnt);
	
	public ArrayList<PostDto> myTipListDao(String userId, int start, int pageCnt);
	
	public int selectAllDao(String userId1, String userId2);
	
	public int selectTipDao(String userId);
	
	public int selectItemDao(String userId);
}
