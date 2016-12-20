package com.hb.pro03.model;

public interface UserDao {

	void insertOne(UserVo bean);
	int idCk(String id);
	UserVo login(UserVo bean);
}
