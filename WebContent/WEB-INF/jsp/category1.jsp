<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Drop Down Navigation with CSS Only</title>
<style>
	body, div, ul, li { margin: 0; padding: 0; } 
	#header { 
		min-width: 800px; 
		height: 150px; 
	} 
  #nav {  
		width: 100%; 
		background-color: #333; 
		font-family:"Century Gothic", "HelveticaNeueLT Pro 45 Lt", sans-serif; 
		float: left; 
	}
	#nav li { 
		list-style: none;
		float: left; 
		width: 120px; 
		height: 30px; 
		line-height: 30px; 
		text-align: center;
	} 
	#nav li a { 
		color: white; 
		text-decoration: none; 
 		display: block; 
	} 
	#nav li a:hover { 
		background-color: #066; 
	} 

	#Boost .Boost a, #Boost .Boost a:hover,

	#home .home a, #home .home a:hover,
	#tutorials .tutorials a, #tutorials .tutorials a:hover,
	#about .about a, #about .about a:hover,
	#contact .contact a, #contact .contact a:hover,
	#news .news a, #news .news a:hover	{ 
	 	background-color: #FFF; 
		color: #000;
		cursor: default;  
	} 	
	
	#nav li ul { 
		position: absolute;  
		display: none; 
	} 
	
	#nav li:hover ul { 
		display: block; 
	} 

		
	#nav li ul li { 
		float: none; 
		display: inline; 
	}
	#nav li ul li a { 
		width: 118px; 
		position: relative; 
		border-left: 1px solid black; 
		border-right: 1px solid black; 
		border-bottom: 1px solid black; 
		background: #333; 
		color: #fff; 
	}
	#nav li ul li a:hover { 
		background: #066; 
		color: #000; 
	}

		
</style>
<!--[if lte IE 6]>
<style>  
body {behavior: url("csshover3.htc");}  
</style>  
<![endif]--> 
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>

<script type="text/javascript">

$(document).ready(function () {
    $("a").hover(function () {
	$.ajax({
		type: "post",
		url: "http://localhost:8080/SpringJDBCTemplate/supcategory1?category_id=18",
		cache: false,				
		data:'category_id=' + $("#category_id").val(),
		
		success: function(response){
			$('#result').html("");
			var obj = JSON.parse(response);
			/* $.each(obj, function(index,value) {
			
		  $('#result').html(value.category_id);

			}); */
			  $('#result').html("lkkk");

			
		},
		error: function(){						
			alert('Error while request..');
		}
	});
    });
});
</script>




</head>

<body id="about">
  <div id="header">
    <ul id="nav">
    	<c:forEach var="category" items="${categoryList.categoryList}">
			
					
					<li class="${category.category_name}"><a href="supcategory1?category_id=${category.category_id}">${category.category_name}</a>
				  <ul>     
		   	<c:forEach var="supcategory" items="${categoryList.supcategoryList}">
        
          <li><div id ="result"></div></li>
         	
       
        </c:forEach>
         </ul>
        </li>
			</c:forEach>
    
    <li class="home"><a href="#">Home</a></li>
      <li class="tutorials"><a href="#">Tutorials</a>
        <ul>
          <li><a href="#">Sub Menu 1</a></li>
          <li><a href="#">Sub Menu 2</a></li>
          <li><a href="#">Sub Menu 3</a></li>
        </ul>
      </li>
      <li class="about"><a href="#">About</a></li>
      <li class="news"><a href="#">Newsletter</a>
        <ul>
          <li><a href="#">Issue 1</a></li>
          <li><a href="#">Issue 2</a></li>
          <li><a href="#">Issue 3</a></li>
        </ul>
      </li>
      <li class="contact"><a href="#">Contact</a></li>
    </ul><!-- nav --> 
  </div><!-- header -->     

</body>
</html>

			
		
		