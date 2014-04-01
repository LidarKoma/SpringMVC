package com.beingjavaguys.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.beingjavaguys.application.time;

public class Employee {
//	List<time> time;
//	public List<time> getTime() {
//		return time;
//	}
//
//	public void setTime(List<time> g) {
//		this.time = g;
//	}
	// and in controller do this
	/*time t = new time();
	t.setId("10:00 AM");
	t.setName("10:00 am");
	t.setId("10:00 AM");
	t.setName("10:00 am");
	t.setId("10:00 AM");
	t.setName("10:00 am");
	t.setId("10:00 AM");
	t.setName("10:00 am");
	List<time> g = new ArrayList<time>();
	g.add(t);
	System.out.println("leader"+ g.add(t));*/
	private String c;

public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

private String country;
	public String getCountry() {
	return country;
}

public void setCountry(String referenceData) {
	this.country = referenceData;
}

	private int price;

	private int total;

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
		
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int i) {
		this.total = i;
	}

	private String firstName;
	
	private String lastName;
	
	private String email;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

}
