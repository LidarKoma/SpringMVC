package com.beingjavaguys.services;

import java.util.List;

import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;

public interface UserService {
	public void insertData1(User1 user);

	public void insertData(User user);

	public List<User> getUserList();

	public void deleteData(String id);

	public User getUser(String id);

	public void updateData(User user);
}
