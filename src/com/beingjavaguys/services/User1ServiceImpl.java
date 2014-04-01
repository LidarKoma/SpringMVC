package com.beingjavaguys.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.beingjavaguys.dao.User1Dao;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;


public class User1ServiceImpl implements User1Service {

	@Autowired
	User1Dao userdao;
	

	@Override
	public void insertData(User1 user) {
		userdao.insertData(user);
	}

	@Override
	public void insertReview(Review review) {
		userdao.insertReview(review);
	}

	@Override
	public List<Review> getReviewList(int offset1, int noOfRecords1) {
		
	
		return userdao.getReviewList(offset1, noOfRecords1);
	}
	@Override

	public int getCountReview() {
		return userdao.getNoOfRecords();	
	}
	
}
