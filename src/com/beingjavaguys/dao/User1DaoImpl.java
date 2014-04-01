package com.beingjavaguys.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;
import com.beingjavaguys.jdbc.ReviewRowMapper;
import com.beingjavaguys.jdbc.UserRowMapper;

public class User1DaoImpl implements User1Dao {

	@Autowired
	DataSource dataSource;

	public void insertData(User1 user) {

		String sql = "INSERT INTO user1 "
				+ "(dateIn,dateOut,firstName,lastName,email,priceId,price) VALUES (?,?,?,?,?,?,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { user.getDateIn(),user.getDateOut(),user.getFirstName(),
						user.getLastName(),user.getEmail(),user.getPriceId(),user.getPrice()});

	}

	public void insertReview(Review review) {

		String sql = "INSERT INTO review "
				+ "(date,e_mail,your_vote,shuttle_wait_time,your_name,review_title,your_review) VALUES (?,?,?,?,?,?,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { review.getDate(),review.getEmail(),review.getYourVote(),
						review.getShuttleWaitTime(),review.getYourName(),review.getReviewTitle(),review.getYourReview()});

	}

	public List<Review> getReviewList(int offset, int noOfRecords) {
		List reviewList = new ArrayList();

		String sql = "select * from review limit " + offset + ", " + noOfRecords;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		reviewList = jdbcTemplate.query(sql, new ReviewRowMapper());
		return reviewList;
	}
	public int getNoOfRecords(){
		 
		String sql = "SELECT COUNT(*) FROM review";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		int total = jdbcTemplate.queryForObject(sql,Integer.class);
		return total;
	}

}
