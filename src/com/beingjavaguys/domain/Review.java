package com.beingjavaguys.domain;

public class Review {
	int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getYourVote() {
		return yourVote;
	}
	public void setYourVote(String yourVote) {
		this.yourVote = yourVote;
	}
	public String getShuttleWaitTime() {
		return shuttleWaitTime;
	}
	public void setShuttleWaitTime(String shuttleWaitTime) {
		this.shuttleWaitTime = shuttleWaitTime;
	}
	public String getYourName() {
		return yourName;
	}
	public void setYourName(String yourName) {
		this.yourName = yourName;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getYourReview() {
		return yourReview;
	}
	public void setYourReview(String yourReview) {
		this.yourReview = yourReview;
	}
	String date;
	String email;
	String yourVote;
	String shuttleWaitTime;
	String yourName;
	String reviewTitle;
	String yourReview;

}
