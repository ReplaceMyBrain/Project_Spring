package com.springlec.base.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.springlec.base.dto.PostDto;

@Repository
public interface ItemsDao {
	
	public ArrayList<PostDto> itemListDao(int start, int pageCnt);
	
	public ArrayList<PostDto> listComDao(int start, int pageCnt);
	
	public ArrayList<PostDto> listAccDao(int start, int pageCnt);
	
	public ArrayList<PostDto> listDeskDao(int start, int pageCnt);
	
	public ArrayList<PostDto> listOthersDao(int start, int pageCnt);
	
	public PostDto selectDao();
	
	public ArrayList<PostDto> searchItemDao(String searching, int start, int pageCnt);

}
