package com.mos.service;


import java.util.List;

import com.github.pagehelper.PageInfo;
import com.mos.entity.User;

public interface IUserService {
	User login(String user_name, String user_pwd);
	Integer updateUserInfo(User user);
	User findUserById(long user_id);
	List<User> findUserByName(String name);
	List<User> findUserLikeName(String name);
	Integer addUser(User user);
	Integer deleteUser(long user_id);
	List<User> findAllUserInfos();
	PageInfo<User> findAllUserBySplitPage(Integer page, Integer limit, String keyword);
}
