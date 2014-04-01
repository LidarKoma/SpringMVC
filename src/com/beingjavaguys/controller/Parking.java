package com.beingjavaguys.controller;



import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beingjavaguys.domain.Employee;
import com.beingjavaguys.domain.Review;
import com.beingjavaguys.domain.User;
import com.beingjavaguys.domain.User1;
import com.beingjavaguys.services.User1Service;
import com.beingjavaguys.services.UserService;
import com.beingjavaguys.application.calculateDateTime;
import com.beingjavaguys.application.calculateDateTime;
@Controller
public class Parking {
	int price;
	@Autowired
	User1Service userService;
	 @Autowired
	    private JavaMailSender mailSender;

@RequestMapping("/register1")
	
	public ModelAndView registerUser(@ModelAttribute User1 user) {

		
		return new ModelAndView("register1");
	}
	@RequestMapping("/insert1")
	//@RequestMapping(value="/insert1", method = RequestMethod.POST)

public ModelAndView inserData(@Valid User1 user, BindingResult result) throws ParseException {
	//public @ResponseBody User1 add(@ModelAttribute User1 user) throws ParseException {
	//public @ResponseBody User1 inserData(@ModelAttribute User1 user) throws ParseException {
		//if (user != null)
			//userService.insertData(user);
		if (result.hasErrors()) {
			return new ModelAndView("register1");
		} else {
		user.setDateIn(user.getDateIn());
		user.setDateOut(user.getDateOut());
		user.setTimeIn(user.getTimeIn());
		user.setTimeOut(user.getTimeOut());
		user.setPriceId(user.getPriceId());
		String firstDate = user.getDateIn();
		String endDate = user.getDateOut();
		String firstTime=user.getTimeIn();
		String endTime = user.getTimeOut();

		
		//---------------
		calculateDateTime a = new calculateDateTime(firstDate, endDate,firstTime,endTime);
		System.out.println("diffDays: " + a.diffDays);
		System.out.println("diffHours: " + a.diffHours);
		System.out.println("diffMinutes: " + a.diffMinutes);
		int totalMoney= (int) (a.diffDays *16);
		if(a.diffHours>1)
		{
			 totalMoney +=16;
		}
		if(a.diffHours==1 && a.diffMinutes>30)
		{
			 totalMoney +=16;
		}
		price = totalMoney;
		System.out.println("$" +totalMoney);
		user.setPrice(price);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user", user);

		//return user;
		
		
	
				return new ModelAndView("output", map);
	}
	}
	@RequestMapping(value="/insert1", method = RequestMethod.GET)

	public @ResponseBody User1 inserDataa(@ModelAttribute User1 user) throws ParseException {

//public @ResponseBody ModelAndView inserDataa(@ModelAttribute User1 user) throws ParseException {
	//public @ResponseBody User1 add1(@ModelAttribute User1 user) throws ParseException {
	//public @ResponseBody User1 inserData(@ModelAttribute User1 user) throws ParseException {
		//if (user != null)
			//userService.insertData(user);
		user.setDateIn(user.getDateIn());
		user.setDateOut(user.getDateOut());
		user.setTimeIn(user.getTimeIn());
		user.setTimeOut(user.getTimeOut());
		//user.setPriceId(user.getPriceId());
		String firstDate = user.getDateIn();
		String endDate = user.getDateOut();
		String firstTime=user.getTimeIn();
		String endTime = user.getTimeOut();

		
		//---------------
		calculateDateTime a = new calculateDateTime(firstDate, endDate,firstTime,endTime);
		System.out.println("diffDays: " + a.diffDays);
		System.out.println("diffHours: " + a.diffHours);
		System.out.println("diffMinutes: " + a.diffMinutes);
		int totalMoney= (int) (a.diffDays *16);
		if(a.diffHours>1)
		{
			 totalMoney +=16;
		}
		if(a.diffHours==1 && a.diffMinutes>30)
		{
			 totalMoney +=16;
		}
		price = totalMoney;
		System.out.println("$" +totalMoney);
		user.setPrice(price);
		//Map<String, Object> map = new HashMap<String, Object>();
		//map.put("user", user);

		return user;
	
				//return new ModelAndView("output","map", map);
	}

@RequestMapping("/register3")
	
	public ModelAndView registerUser3(@ModelAttribute User1 user) throws ParseException {
	//if (user != null)
	//userService.insertData(user);
user.setDateIn(user.getDateIn());
user.setDateOut(user.getDateOut());
user.setTimeIn(user.getTimeIn());
user.setTimeOut(user.getTimeOut());
user.setPriceId(user.getPriceId());
String firstDate = user.getDateIn();
String endDate = user.getDateOut();
String firstTime=user.getTimeIn();
String endTime = user.getTimeOut();


//---------------
calculateDateTime a = new calculateDateTime(firstDate, endDate,firstTime,endTime);
System.out.println("diffDays: " + a.diffDays);
System.out.println("diffHours: " + a.diffHours);
System.out.println("diffMinutes: " + a.diffMinutes);
int totalMoney= (int) (a.diffDays *16);
if(a.diffHours>1)
{
	 totalMoney +=16;
}
if(a.diffHours==1 && a.diffMinutes>30)
{
	 totalMoney +=16;
}
price = totalMoney;
System.out.println("$" +totalMoney);
user.setPrice(price);
Map<String, Object> map = new HashMap<String, Object>();
map.put("user", user);



		return new ModelAndView("output3","map", map);
}
		
	
	//@RequestMapping("/insert3")
@RequestMapping(value="/insert3", method = RequestMethod.POST)

//public @ResponseBody ModelAndView inserData(@ModelAttribute User1 user) throws ParseException {
	//public @ResponseBody Employee add(@ModelAttribute Employee employee) throws ParseException {
	public @ResponseBody User1 inserData3(@ModelAttribute User1 user) throws ParseException {
		//if (user != null)
			//userService.insertData(user);
		user.setDateIn(user.getDateIn());
		user.setDateOut(user.getDateOut());
		user.setTimeIn(user.getTimeIn());
		user.setTimeOut(user.getTimeOut());
		user.setPriceId(user.getPriceId());
		String firstDate = user.getDateIn();
		String endDate = user.getDateOut();
		String firstTime=user.getTimeIn();
		String endTime = user.getTimeOut();

		
		//---------------
		calculateDateTime a = new calculateDateTime(firstDate, endDate,firstTime,endTime);
		System.out.println("diffDays: " + a.diffDays);
		System.out.println("diffHours: " + a.diffHours);
		System.out.println("diffMinutes: " + a.diffMinutes);
		int totalMoney= (int) (a.diffDays *16);
		if(a.diffHours>1)
		{
			 totalMoney +=16;
		}
		if(a.diffHours==1 && a.diffMinutes>30)
		{
			 totalMoney +=16;
		}
		price = totalMoney;
		System.out.println("$" +totalMoney);
		user.setPrice(price);
		//Map<String, Object> map = new HashMap<String, Object>();
		//map.put("user", user);

		return user;
	
				//return new ModelAndView("output","map", map);
	}
	
	
	
	
	@RequestMapping("/output2")
	public ModelAndView output2(@ModelAttribute User1 user) throws ParseException {
		
user.setTimeIn(user.getTimeIn());
				
				return new ModelAndView("output1","user", user);
	}
	@RequestMapping("/output1")
	public @ResponseBody ModelAndView inserData1(@ModelAttribute User1 user) throws ParseException {
		//String firstName = request.getParameter("firstName");
		user.setDateIn(user.getDateIn());
		user.setDateOut(user.getDateOut());
		user.setTimeIn(user.getTimeIn());
		user.setTimeOut(user.getTimeOut());
		user.setPriceId(user.getPriceId());
		String firstDate = user.getDateIn();
		String endDate = user.getDateOut();
		String firstTime=user.getTimeIn();
		String endTime = user.getTimeOut();

		
		//---------------
		calculateDateTime a = new calculateDateTime(firstDate, endDate,firstTime,endTime);
		System.out.println("diffDays: " + a.diffDays);
		System.out.println("diffHours: " + a.diffHours);
		System.out.println("diffMinutes: " + a.diffMinutes);
		int totalMoney= (int) (a.diffDays *16);
		if(a.diffHours>1)
		{
			 totalMoney +=16;
		}
		if(a.diffHours==1 && a.diffMinutes>30)
		{
			 totalMoney +=16;
		}
		price = totalMoney;
		System.out.println("$" +totalMoney);
		user.setPrice(price);
				
		return new ModelAndView("output1","user", user);
	}
@RequestMapping("/output")
	
	//1public @ResponseBody ModelAndView output(@ModelAttribute User1 user) throws ParseException {
public @ResponseBody User1 output(@ModelAttribute User1 user) throws ParseException {

user.setDateIn(user.getDateIn());
user.setDateOut(user.getDateOut());
user.setTimeIn(user.getTimeIn());
user.setTimeOut(user.getTimeOut());
user.setPriceId(user.getPriceId());


//-------------------
//int price = totalMoney;
user.setPrice(price);
Map<String, Object> map = new HashMap<String, Object>();
map.put("user", user);
return user;

		
		//1return new ModelAndView("output","map", map);
	}

@RequestMapping("/hiddenfeild")

public ModelAndView hiddenfeild(@ModelAttribute User1 user) throws ParseException {

	user.setDateIn(user.getDateIn());
	user.setDateOut(user.getDateOut());
	user.setTimeIn(user.getTimeIn());
	user.setTimeOut(user.getTimeOut());
	user.setPriceId(user.getPriceId());
	String firstDate = user.getDateIn();
	String endDate = user.getDateOut();
	String firstTime=user.getTimeIn();
	String endTime = user.getTimeOut();

	
	//---------------
	calculateDateTime a1 = new calculateDateTime(firstDate, endDate,firstTime,endTime);
	System.out.println("diffDays: " + a1.diffDays);
	System.out.println("diffHours: " + a1.diffHours);
	System.out.println("diffMinutes: " + a1.diffMinutes);
	int totalMoney= (int) (a1.diffDays *16);
	if(a1.diffHours>1)
	{
		 totalMoney +=16;
	}
	if(a1.diffHours==1 && a1.diffMinutes>30)
	{
		 totalMoney +=16;
	}
	price = totalMoney;
	System.out.println("$" +totalMoney);
	user.setPrice(price);
	return new ModelAndView("hiddenf");
}

@RequestMapping("/insertToDatabase")
public String inserData2(@ModelAttribute final  User1 user) {
	user.setDateIn(user.getDateIn());
	user.setDateOut(user.getDateOut());
	user.setTimeIn(user.getTimeIn());
	user.setTimeOut(user.getTimeOut());
	user.setPrice(user.getPrice());
	user.setFirstName(user.getFirstName());
	user.setLastName(user.getLastName());
	user.setEmail(user.getEmail());
//	
//	  // takes input from e-mail form
//String recipientAddress = "lidarkoma@yahoo.com";
String subject = "Java";
String message = "<p>Lidar is great man";

/* this code send only normal text no HTML */
//    // prints debug info
//    System.out.println("To: " + recipientAddress);
//    System.out.println("Subject: " + subject);
//    System.out.println("Message: " + message);
//     
//    // creates a simple e-mail object
//    SimpleMailMessage email = new SimpleMailMessage();
//    email.setTo(recipientAddress);
//    email.setSubject(subject);
//    email.setText(message);
//     
//    // sends the e-mail
//    mailSender.send(email);

/* use this code for sending html formate */
	mailSender.send(new MimeMessagePreparator() {
		String recipientAddress = user.getEmail();
String bodymessage="<b>See the attached</b> " + user.getFirstName() + "<br>" + user.getPrice();

		  public void prepare(MimeMessage mimeMessage) throws MessagingException {
		    MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
		    //message.setFrom(fromEmail);
		    message.setTo(recipientAddress);
		    message.setSubject("A file for you");
		    message.setText(bodymessage , true);
		  }
		});


	if (user != null)
		userService.insertData(user);
	
	return "forward:/database";
}
@RequestMapping("/database")
public ModelAndView database(@ModelAttribute User1 user) {

//public @ResponseBody String database(@ModelAttribute User1 user) {
	user.setDateIn(user.getDateIn());
	user.setDateOut(user.getDateOut());
	user.setTimeIn(user.getTimeIn());
	user.setTimeOut(user.getTimeOut());
	user.setPrice(user.getPrice());
	user.setFirstName(user.getFirstName());
	user.setLastName(user.getLastName());
	user.setEmail(user.getEmail());
	String out1= "The Email was send" + "price : "+ user.getPrice();
	
	//return out1;

	return new ModelAndView("database");
}

@RequestMapping("/review")

public ModelAndView review(@ModelAttribute Review review) {

	
	return new ModelAndView("review");
}
@RequestMapping("/reviewResult")

public ModelAndView reviewResult(@ModelAttribute Review review) {
	   DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
	   //get current date time with Date()
	   Date date1 = Calendar.getInstance().getTime();

	   String date =dateFormat.format(date1);

	   //get current date time with Calendar()
	   //String date = "2/12/14";
			review.setDate(date);
			
			review.setEmail(review.getEmail());
			review.setYourVote(review.getYourVote());
			review.setShuttleWaitTime(review.getShuttleWaitTime());
			review.setYourName(review.getYourName());
			review.setReviewTitle(review.getReviewTitle());
			review.setYourReview(review.getYourReview());

	if (review != null)
		
		userService.insertReview(review);
	return new ModelAndView("reviewResult");
}
@RequestMapping("/reviewList")
public ModelAndView reviewList(Model model,@RequestParam(value="page", required=true)
String page, HttpServletRequest request,   
HttpServletResponse response) {
	 int page2;
	page2 = Integer.parseInt(request.getParameter("page"));
	int recordsPerPage = 5;
	List<Review> reviewList = userService.getReviewList((page2-1)*recordsPerPage, recordsPerPage);
	int noOfRecords = userService.getCountReview();
    int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
    System.out.println(noOfPages);
model.addAttribute("reviewList",reviewList);
model.addAttribute("recordsPerPage", recordsPerPage);
model.addAttribute("noOfRecords", noOfRecords);
model.addAttribute("noOfPages", noOfPages);
   //int currentPage= page;

   
   int currentPage= page2;
   model.addAttribute("currentPage", currentPage);

   // List<Integer> page1 = new ArrayList<Integer>();
	//page1.add(recordsPerPage);
	//page1.add(noOfPages);
	//page1.add(currentPage);

	
	
	

	//Map<Object, List> map = new HashMap<Object, List>();
	//map.put("reviewList", reviewList);
	//map.put("page1", page1);

   return new ModelAndView("reviewList", "map", model);



//return new ModelAndView("reviewList", "map", map);



	//return new ModelAndView("reviewList", "reviewList", reviewList);
	}
}
