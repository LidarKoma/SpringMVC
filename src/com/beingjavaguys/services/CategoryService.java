package com.beingjavaguys.services;

import java.util.List;

import com.beingjavaguys.domain.Category;
import com.beingjavaguys.domain.Products;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;

public interface CategoryService {
	//public void insertData(User1 user);

	//public void insertReview(Review review);
	public List<Category> getCategoryList();
	public List<Category> getSupCategoryList(Long category_id);

	public List<Products> getProductsList(int category_id);

	List<Products> getAllProductsList(int category_id);



}
