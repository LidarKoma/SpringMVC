<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Being Java Guys | Spring DI Hello World</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 100px;
	height: 22px;
	text-align: center;
}
.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}




</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
  <script type="text/javascript">
  $(document).ready(function() {  
	  
	  $('.nav-toggle').click(function(){
       	//logic to show/hide collapsable content
       	$("#collapse1").show();	
       });
	  $('.nav-toggle2').click(function(){
	       	//logic to show/hide collapsable content
	       	$("#show").toggle();	
	       });
  }); 
  function doAjax() {
    	
    
      $.ajax({
        url: 'h',
        data:"",
        success: function(data) {
          $('#listAll').html(data);
        

        }
      });
  

    
    }
      
       
       
    
       

   
      
  </script>
</head>
<body>

<div>
		<button href="#collapse1" class="nav-toggle">Show</button>
	</div>
	<div id="collapse1" style="display:none">
		<p>Bla bla bla bla</p>
	</div>
	<div>
		<button href="#show" class="nav-toggle2">Show</button>
	</div>
<a href="#" onclick="doAjax();">Click Here to See User List</a>

<button id="demo" onclick="doAjax();" title="Button">Get the time!</button>

	<form>

<button id="demo" onclick="doAjax();" title="Button">Get the time!</button>

</form>
	
	<div id="listAll">
	</div>

	<div id="show" style="display:none">

	<center>
	
		<br /> <br /> <br /> <b>User
			List | Being Java Guys </b><br /> <br />
			
		

		<table border="1">
			<tr>
				<td class="heading">User Id</td>
				<td class="heading">First Name</td>
				<td class="heading">Last Name</td>
				<td class="heading">Gender</td>
				<td class="heading">City</td>
				<td class="heading">Edit</td>
				<td class="heading">Delete</td>
			</tr>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${user.userId}</td>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.gender}</td>
					<td>${user.city}</td>
					<td><a href="edit?id=${user.userId}">Edit</a></td>
					<td><a href="delete?id=${user.userId}">Delete</a></td>
				</tr>
			</c:forEach>
			<tr><td colspan="7"><a href="register">Add New User</a></td></tr>
		</table>

	</center>
</div>
</body>
</html>