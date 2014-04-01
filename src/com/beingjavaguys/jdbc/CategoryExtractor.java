package com.beingjavaguys.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.beingjavaguys.domain.Products;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.Category;


public class CategoryExtractor implements ResultSetExtractor<Category> {

	public Category extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		Category category = new Category();
		category.setCategory_id(resultSet.getLong(1));
		category.setCategory_name(resultSet.getString(2));
		category.setCategory_order_number(resultSet.getLong(3));
		category.setHas_subcategories(resultSet.getInt(4));
		category.setMaster_category_id(resultSet.getLong(5));
		

		//user.setUserId(resultSet.getInt(1));
		//user.setFirstName(resultSet.getString(2));
		
		return category;
	}
	public Products extractData2(ResultSet resultSet) throws SQLException,
	DataAccessException {
		Products products= new Products();
		Category category = new Category();
		category.setMaster_category_id(resultSet.getLong(5));
products.setProduct_title(resultSet.getString(8));
category.setCategory_id((long) resultSet.getInt(1));
//products.setCategory(((Object) resultSet).getInt(4));


//user.setUserId(resultSet.getInt(1));
//user.setFirstName(resultSet.getString(2));

return products;

/*public Map <Object,Object> extractData2(ResultSet resultSet) throws SQLException,
DataAccessException {
	//Map <List,Object> all= new <List,Object>Map();
	Map<Object, Object> map = new HashMap<Object, Object>();
Category category = new Category();
	Products products= new Products();
	products.setProduct_title(resultSet.getString(3));

	map.put(category, category);
	map.put(products, products);
	
	
//products.setCategory_id(resultSet.getInt(2));

//user.setUserId(resultSet.getInt(1));
//user.setFirstName(resultSet.getString(2));

return map;*/
}

}
