package com.springlec.base.dto;
public class DonateDto {
	
	int DONATE_AMOUNT;
	int sumDonate;

	public DonateDto() {
		// TODO Auto-generated constructor stub
	}
	

	public DonateDto(int dONATE_AMOUNT) {
		super();
		DONATE_AMOUNT = dONATE_AMOUNT;
	}


	public int getDONATE_AMOUNT() {
		return DONATE_AMOUNT;
	}

	public void setDONATE_AMOUNT(int dONATE_AMOUNT) {
		DONATE_AMOUNT = dONATE_AMOUNT;
	}


	public int getSumDonate() {
		return sumDonate;
	}
	
	public void setSumDonate(int sumDonate) {
		this.sumDonate = sumDonate;
	}
	
	

	
	
}
