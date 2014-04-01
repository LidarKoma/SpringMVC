package com.beingjavaguys.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;

import com.beingjavaguys.domain.Category;
import com.beingjavaguys.domain.Products;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;

public class ProductsRowMapper implements RowMapper<Products> {

	@Override
	public Products mapRow(ResultSet resultSet, int line) throws SQLException {
		CategoryExtractor categoryExtractor = new CategoryExtractor();
		return categoryExtractor.extractData2(resultSet);
	}

}
