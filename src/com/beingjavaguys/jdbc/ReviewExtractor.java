package com.beingjavaguys.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;

public class ReviewExtractor implements ResultSetExtractor<Review> {

	public Review extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		Review review = new Review();
		review.setDate(resultSet.getString(2));
		review.setYourVote(resultSet.getString(4));

		review.setYourReview(resultSet.getString(8));

		//user.setUserId(resultSet.getInt(1));
		//user.setFirstName(resultSet.getString(2));
		
		return review;
	}

}
