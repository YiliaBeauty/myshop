package com.shop.mapper;

import com.shop.dto.User;

public interface UserMapper {
	
	public void insertUser(User user);
	
	public User loginFindByName(String username);

	public User loginFindByUnameAndPwd(User user);

}
