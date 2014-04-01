package com.beingjavaguys.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.beingjavaguys.domain.Category;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;

public class CategoryRowMapper implements RowMapper<Category> {

	@Override
	public Category mapRow(ResultSet resultSet, int line) throws SQLException {
		CategoryExtractor categoryExtractor = new CategoryExtractor();
		return categoryExtractor.extractData(resultSet);
	}

}
