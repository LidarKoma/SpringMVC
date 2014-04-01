package com.beingjavaguys.services;

import java.util.List;

import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;

public interface User1Service {
	public void insertData(User1 user);

	public void insertReview(Review review);
	public List<Review> getReviewList(int offset1, int noOfRecords1);
	public int getCountReview();

	


}
