package com.beingjavaguys.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.beingjavaguys.dao.CategoryDao;
import com.beingjavaguys.dao.User1Dao;
import com.beingjavaguys.domain.Category;
import com.beingjavaguys.domain.Products;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;


public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDao categorydao;
	@Override
	public List<Category> getCategoryList() {
		
	
		return categorydao.getCategoryList();
	}
	public List<Category> getSupCategoryList(Long category_id) {
		
		
		return categorydao.getSupCategoryList(category_id);
	}

public List<Products> getProductsList(int category_id) {
		
		
		return categorydao.getProductsList(category_id);
	}
public List<Products> getAllProductsList(int category_id) {
	
	
	return categorydao.getAllProductsList(category_id);
}
}
