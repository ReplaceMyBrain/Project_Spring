package com.springlec.base.dao;

import java.util.ArrayList;

import com.springlec.base.dto.DonateDto;


public interface DonateDao {

	//도네이션 합계
	public ArrayList<DonateDto> donation();
	
	//도네이션 입력
	public void donateClick(String DONATE_AMOUNT);
}
