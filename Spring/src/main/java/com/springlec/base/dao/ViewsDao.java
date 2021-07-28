package com.springlec.base.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public interface ViewsDao {

	public void countingItemView(int num);

	public void countingTipView(int num);
	
	public void countingNoticeView(int num);

}
