package com.beingjavaguys.dao;

import java.util.List;

import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;

public interface UserDao {
	public void insertData(User user);

	public List<User> getUserList();

	public void updateData(User user);

	public void deleteData(String id);

	public User getUser(String id);
	public void insertData1(User1 user);


}
