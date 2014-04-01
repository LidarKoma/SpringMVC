package com.beingjavaguys.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beingjavaguys.domain.Category;
import com.beingjavaguys.domain.Products;
import com.beingjavaguys.services.CategoryService;

@Controller
public class SmartPhone {
	@Autowired
	CategoryService categoryService;
	@RequestMapping("/category")
	public ModelAndView categoryList()
	 {
	 List<Category> categoryList = categoryService.getCategoryList();
	 return new ModelAndView("category", "categoryList", categoryList);
	 }
	@RequestMapping("/category1")
	public ModelAndView categoryList1()
	 {
		//category_id.
	 List<Category> categoryList = categoryService.getCategoryList();
	//List<Category> supcategoryList = categoryService.getSupCategoryList(category_id);
		Map<String, Object> map = new HashMap<String, Object>();

map.put("categoryList", categoryList);
//map.put("supcategoryList", supcategoryList);
	 return new ModelAndView("category1", "categoryList", map);
	 }
	@RequestMapping("/supcategory1")
	public @ResponseBody List<Category> supcategoryList1(@RequestParam Long category_id)
	 {
	 List<Category> supcategoryList = categoryService.getSupCategoryList(category_id);
	// List<Category> categoryList = categoryService.getCategoryList();

	 return supcategoryList;
	 }
	
	
	
	@RequestMapping("/supcategory")
	public ModelAndView supcategoryList(@RequestParam Long category_id)
	 {
	 List<Category> supcategoryList = categoryService.getSupCategoryList(category_id);
	// List<Category> categoryList = categoryService.getCategoryList();

	 return new ModelAndView("supcategory", "supcategoryList", supcategoryList);
	 }
	@RequestMapping("/products")
	public ModelAndView productsList(@RequestParam int category_id)
	 {
	 List<Products> productsList = categoryService.getProductsList(category_id);
	 return new ModelAndView("products", "productsList", productsList);
	 }
	@RequestMapping("/allproducts")
	public ModelAndView allproductsList(@RequestParam int category_id)
	 {
	 List<Products> productsList = categoryService.getAllProductsList(category_id);
	 return new ModelAndView("allproducts", "productsList", productsList);
	 }
}
