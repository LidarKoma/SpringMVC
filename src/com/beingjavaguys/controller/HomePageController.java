package com.beingjavaguys.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beingjavaguys.domain.User;
import com.beingjavaguys.services.UserService;

@Controller
public class HomePageController {

	@Autowired
	UserService userService;

	@RequestMapping("/register")
	
	public ModelAndView registerUser(@ModelAttribute User user) {

		List<String> genderList = new ArrayList<String>();
		genderList.add("male");
		genderList.add("female");

		List<String> cityList = new ArrayList<String>();
		cityList.add("delhi");
		cityList.add("gurgaon");
		cityList.add("meerut");
		cityList.add("noida");

		Map<String, List> map = new HashMap<String, List>();
		map.put("genderList", genderList);
		map.put("cityList", cityList);
		return new ModelAndView("register", "map", map);
	}

	@RequestMapping("/insert")
	public String inserData(@ModelAttribute User user) {
		if (user != null)
			userService.insertData(user);
		return "redirect:/getList";
	}

	@RequestMapping(value = "/getList", method = RequestMethod.GET)
	public ModelAndView getUserLIst() {
		//List<User> userList = userService.getUserList();
		
		//return new ModelAndView("userList", "userList", userList);
		//model.addAttribute("userList", userList);
		//Map<String, List> map1 = new HashMap<String, List>();
    	
       
  		//map1.put("value", userList);

   // Model model;
	    //return "<h2>This should be the response body</h2>";
		//model.addAttribute("userList", userList);
		return new ModelAndView("forward:/userList");


	   // return "forward:/edit";
	}

	@RequestMapping("/userList")
	public ModelAndView userList() {
		List<User> userList = userService.getUserList();

		return new ModelAndView("userList", "userList", userList);
		}
	@RequestMapping(value="/h", method = RequestMethod.GET)
	public @ResponseBody String h(Model model) {
		List<User> userList = userService.getUserList();
		List<User> u2 = new ArrayList<User>();
		User item;
		String result = "<table border=\"1\">" + 

		"<tr><th>Name city</th>"+
		"<th>First Name</th>"+
		"</tr>";
		for(int i=0; i < userList.size(); i++) {
			item=userList.get(i);
			result += "<tr>" + 
			"<td>"+item.getCity() + "</td>" +
		    "<td>"+item.getFirstName() + "</td>" +
		    "</tr>";
		}
	
			
		result +="</table>";

	
		return result;		
	    }

	@RequestMapping("/edit")
	public ModelAndView editUser(@RequestParam String id,
			@ModelAttribute User user) {

		user = userService.getUser(id);

		List<String> genderList = new ArrayList<String>();
		genderList.add("male");
		genderList.add("female");

		List<String> cityList = new ArrayList<String>();
		cityList.add("delhi");
		cityList.add("gurgaon");
		cityList.add("meerut");
		cityList.add("noida");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("genderList", genderList);
		map.put("cityList", cityList);
		map.put("user", user);

		return new ModelAndView("edit", "map", map);

	}

	@RequestMapping("/update")
	public String updateUser(@ModelAttribute User user) {
		userService.updateData(user);
		return "redirect:/getList";

	}

	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String id) {
		System.out.println("id = " + id);
		userService.deleteData(id);
		return "redirect:/getList";
	}
}