package com.springlec.base.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.springlec.base.dto.PostDto;

@Repository
public interface TipsDao {
	
	public ArrayList<PostDto> listTipDao(int start, int pageCn);
	
	public ArrayList<PostDto> listCodeDao(int start, int pageCnt);
	
	public ArrayList<PostDto> listProtoDao(int start, int pageCnt);
	
	public ArrayList<PostDto> listInfoDao(int start, int pageCnt);
	
	public ArrayList<PostDto> listOtherDao(int start, int pageCnt);
	
	public PostDto selectDao();
	
	public ArrayList<PostDto> searchTipDao(String searching, int start, int pageCnt);
}
