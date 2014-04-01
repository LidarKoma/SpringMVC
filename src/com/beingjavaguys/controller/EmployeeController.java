package com.beingjavaguys.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beingjavaguys.application.time;
import com.beingjavaguys.domain.Employee;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;


@Controller
public class EmployeeController {

@RequestMapping("/employee")
	
	public ModelAndView form(@ModelAttribute Employee employee) {
	employee.setCountry(employee.getCountry());

	Map referenceData = new HashMap();
	Map<String,String> country = new LinkedHashMap<String,String>();
	country.put("US", "United Stated");
	country.put("CHINA", "China");
	country.put("SG", "Singapore");
	country.put("MY", "Malaysia");
	referenceData.put("countryList", country);
	employee.setCountry(employee.getCountry());
	employee.setEmail(employee.getEmail());
	employee.setFirstName(employee.getFirstName());
	employee.setLastName(employee.getLastName());

	employee.setPrice(employee.getPrice());
	int a = employee.getPrice();
	employee.setTotal((a*10));
	System.out.println(""+a + " " +(a*10));		
	//return new ModelAndView("index","employee",employee);
	return new ModelAndView("index",referenceData);

	}
@RequestMapping("/in")

public ModelAndView registerUserTo3(@ModelAttribute Employee employee) {
	Map referenceData = new HashMap();
	Map<String,String> country = new LinkedHashMap<String,String>();
	country.put("US", "United Stated");
	country.put("CHINA", "China");
	country.put("SG", "Singapore");
	country.put("MY", "Malaysia");
	referenceData.put("countryList", country);
	employee.setCountry(employee.getCountry());
	

	return new ModelAndView("inputToIndex",referenceData);
}
	@RequestMapping(value="/employee", method = RequestMethod.GET)
	//need to add thes code in Springservlet.xml in order the json work in  @ResponseBody
	//<mvc:annotation-driven />
	//http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc.xsd">
   //xmlns:mvc="http://www.springframework.org/schema/mvc"

/*public @ResponseBody Employee add(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		Employee employee = new Employee();

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");

		employee.setEmail(email);
		employee.setFirstName(firstName);
		employee.setLastName(lastName);

		return employee;
	}*/
	
		public @ResponseBody Employee add(@ModelAttribute Employee employee) throws ParseException {

//Employee employee = new Employee();

//String firstName = request.getParameter("firstName");
//String lastName = request.getParameter("lastName");
//String email = request.getParameter("email");
	
		Map referenceData = new HashMap();
		Map<String,String> country = new LinkedHashMap<String,String>();
		country.put("US", "United Stated");
		country.put("CHINA", "China");
		country.put("SG", "Singapore");
		country.put("MY", "Malaysia");
		referenceData.put("countryList", country);
		employee.setCountry(employee.getCountry());
employee.setEmail(employee.getEmail());
employee.setFirstName(employee.getFirstName());
employee.setLastName(employee.getLastName());

employee.setPrice(employee.getPrice());
int a = employee.getPrice();
employee.setTotal((a*10));
System.out.println(""+a + " " +(a*10));
return employee;
}

	@RequestMapping(value="/employee1", method = RequestMethod.POST)
	//need to add thes code in Springservlet.xml in order the json work in  @ResponseBody
	//<mvc:annotation-driven />
	//http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc.xsd">
   //xmlns:mvc="http://www.springframework.org/schema/mvc"

/*public @ResponseBody Employee add(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		Employee employee = new Employee();

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");

		employee.setEmail(email);
		employee.setFirstName(firstName);
		employee.setLastName(lastName);

		return employee;
	}*/
	
		public @ResponseBody Employee add1(@ModelAttribute Employee employee) throws ParseException {

//Employee employee = new Employee();

//String firstName = request.getParameter("firstName");
//String lastName = request.getParameter("lastName");
//String email = request.getParameter("email");

employee.setEmail(employee.getEmail());
employee.setFirstName(employee.getFirstName());
employee.setLastName(employee.getLastName());

employee.setPrice(employee.getPrice());
int a = employee.getPrice();
employee.setTotal((a*10));
System.out.println(""+a + " " +(a*10));
return employee;
}
	
	
	@RequestMapping("/employee1")
	//need to add thes code in Springservlet.xml in order the json work in  @ResponseBody
	//<mvc:annotation-driven />
	//http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc.xsd">
   //xmlns:mvc="http://www.springframework.org/schema/mvc"

/*public @ResponseBody Employee add(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		Employee employee = new Employee();

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");

		employee.setEmail(email);
		employee.setFirstName(firstName);
		employee.setLastName(lastName);

		return employee;
	}*/
	
		public @ResponseBody Employee add2(@ModelAttribute Employee employee) throws ParseException {

//Employee employee = new Employee();

//String firstName = request.getParameter("firstName");
//String lastName = request.getParameter("lastName");
//String email = request.getParameter("email");
		//List<String> time = new ArrayList<String>();
		//time.add("male");
		//time.add("female");

		//Map<String, String> map = new HashMap<String, String>();
		//map.put("time", time);
		//map.put("cityList", cityList);
		//map.put("employee", employee);
		
	//employee.setTime(time);
		Map referenceData = new HashMap();
		Map<String,String> country = new LinkedHashMap<String,String>();
		country.put("US", "United Stated");
		country.put("CHINA", "China");
		country.put("SG", "Singapore");
		country.put("MY", "Malaysia");
		referenceData.put("countryList", country);
		employee.setCountry(employee.getCountry());	
employee.setEmail(employee.getEmail());
employee.setFirstName(employee.getFirstName());
employee.setLastName(employee.getLastName());

employee.setPrice(employee.getPrice());
int a = employee.getPrice();
employee.setTotal((a*10));
System.out.println(""+a + " " +(a*10));
return employee;
}
	
}
