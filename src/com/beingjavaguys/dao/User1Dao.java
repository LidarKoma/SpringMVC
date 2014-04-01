package com.beingjavaguys.dao;

import java.util.List;

import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;

public interface User1Dao {
	public void insertData(User1 user);

	public void insertReview(Review review);

	public List<Review> getReviewList(int offset, int noOfRecords);
	public int getNoOfRecords();
}
