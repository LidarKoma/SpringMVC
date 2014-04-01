package com.beingjavaguys.domain;

public class Category {

	  private Long category_id;
	  private String category_name;
	  private Long category_order_number;
	  private Long master_category_id;
	  private int has_subcategories;
	public Long getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Long category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public Long getCategory_order_number() {
		return category_order_number;
	}
	public void setCategory_order_number(Long category_order_number) {
		this.category_order_number = category_order_number;
	}
	public Long getMaster_category_id() {
		return master_category_id;
	}
	public void setMaster_category_id(Long master_category_id) {
		this.master_category_id = master_category_id;
	}
	public int getHas_subcategories() {
		return has_subcategories;
	}
	public void setHas_subcategories(int has_subcategories) {
		this.has_subcategories = has_subcategories;
	}
}
