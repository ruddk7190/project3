package com.hb.pro03.model;

public interface UserDao {

	void insertOne(UserVo bean);
	UserVo selectOne(String id);
	UserVo login(UserVo bean);
	UserVo updateOne(String id);
}
