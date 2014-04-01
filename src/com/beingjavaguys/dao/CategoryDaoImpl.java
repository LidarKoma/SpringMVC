package com.beingjavaguys.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.beingjavaguys.domain.Category;
import com.beingjavaguys.domain.Products;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;
import com.beingjavaguys.jdbc.CategoryRowMapper;
import com.beingjavaguys.jdbc.ProductsRowMapper;
import com.beingjavaguys.jdbc.ReviewRowMapper;
import com.beingjavaguys.jdbc.UserRowMapper;

public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	DataSource dataSource;

	

	public List<Category> getCategoryList() {
		List categoryList = new ArrayList();

		String sql = "select * from category Where has_subcategories=1";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		categoryList = jdbcTemplate.query(sql, new CategoryRowMapper());
		return categoryList;
	}

	public List<Category> getSupCategoryList(Long category_id) {
		List supcategoryList = new ArrayList();

		String sql = "select * from category Where has_subcategories=0 AND master_category_id=" + category_id;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		supcategoryList = jdbcTemplate.query(sql, new CategoryRowMapper());
		return supcategoryList;
	}

	public List<Products> getProductsList(int category_id) {
		List productsList = new ArrayList();

//		String sql = "select * from category,products Where category.has_subcategories=0 AND category.master_category_id="
//		+ category_id + "AND products.category_id=" +category_id;
		String sql = "select * from category,products Where products.category_id="
				+ category_id;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		productsList = jdbcTemplate.query(sql, new ProductsRowMapper());
		return productsList;
	}
	public List<Products> getAllProductsList(int category_id) {
		List productsList = new ArrayList();

//		String sql = "select * from category,products Where category.has_subcategories=0 AND category.master_category_id="
//		+ category_id + "AND products.category_id=" +category_id;
	/*	String sql = "select * from category,products Where category.category_id = products.category_id "
				+ "AND category.master_category_id ="
				+ master_category_id;*/
		String sql = "select * from category,products"
				+ "	Where products.category_id IN (select category_id FROM category Where master_category_id =" +category_id +")";
		/*select * from category,products
		Where products.category_id In (select category_id FROM category
		Where master_category_id=19)
				
								+ "Where master_category_id =" + category_id +")";

				*/

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		productsList = jdbcTemplate.query(sql, new ProductsRowMapper());
		return productsList;
	}

}
