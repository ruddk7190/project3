package com.hb.pro03.model;

public interface UserDao {

	void insertOne(UserVo bean);
	UserVo idCk(int id);
}
