<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" language="javascript" src="http://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
<script type="text/javascript" src="http://www.technicalkeeda.com/js/javascripts/plugin/json2.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Jquery Ajax Demo</title>
<style>
Table.GridOne {
	padding: 3px;
	margin: 0;
	background: lightyellow;
	border-collapse: collapse;	
	width:35%;
}
Table.GridOne Td {	
	padding:2px;
	border: 1px solid #ff9900;
	border-collapse: collapse;
}
#result
{

border:2px solid red;
padding:10px 40px; 
background:#dddddd;
width:300px;
border-radius:25px;
}
</style>
<script type="text/javascript">
jQuery( document ).ready(function( $ ) {

	
		$.ajax({
			type: "get",
			url: "http://localhost:8080/SpringJDBCTemplate/employee",
			cache: false,				
			data:'firstName=' + $("#firstName").val() + "&lastName=" + $("#lastName").val() + "&email=" + $("#email").val()
			+ "&price=" + $("#price").val(),
			success: function(response){
				$('#result').html("");
				var obj = JSON.parse(response);
				$('#result').html("First Name:- " + obj.firstName +"</br>Last Name:- " + obj.lastName  + "</br>Email:- " + obj.email
						+"</br>price:- " + obj.price  + "</br>total:- " + obj.total);
			},
			error: function(){						
				alert('Error while request..');
			}
		});
	

	});


function madeAjaxCall(firstName){
	$.ajax({
		type: "get",
		url: "http://localhost:8080/SpringJDBCTemplate/employee",
		cache: false,				
		data:'firstName=' + $("#firstName").val() + "&lastName=" + $("#lastName").val() + "&email=" + $("#email").val()
		+ "&price=" + $("#price").val(),
		success: function(response){
			$('#result').html("");
			var obj = JSON.parse(response);
			$('#result').html("First Name:- " + obj.firstName +"</br>Last Name:- " + obj.lastName  + "</br>Email:- " + obj.email
					+"</br>price:- " + obj.price  + "</br>total:- " + obj.total);
		},
		error: function(){						
			alert('Error while request..');
		}
	});
}
</script>
</head>
<body>
	<form:form method="post" action="/employee" modelAttribute="employee">

		
		<table cellpadding="0" cellspacing="0" border="1" class="GridOne">
			<!--<tr>
				<td>First Name</td>
				<td><input type="text" name="firstName" id="firstName" value="${employee.firstName}"></td>
			</tr>-->
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastName"/></td>
				
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email"/></td>
			</tr>
			<tr>
			
				<td colspan="2" align="center"><input type="button" value="Ajax Submit" onclick="madeAjaxCall();"></td>
			</tr>
			<tr>
		<%-- 	<td>
				<select name="time">
    <c:forEach items="${employee.time}" var="category">
        <option value="${category.id}" ${time.category == category.id ? 'selected' : ''}>${category.name}</option>
    </c:forEach>
</select>
</td> --%>
			<td><select name="firstName" class="form-select" onchange="madeAjaxCall(this.value);" id="firstName">
			<option value="12:00 AM">12:00 AM</option><option value="12:30 AM">12:30 AM</option>
			<option value="01:00 AM">1:00 AM</option><option value="01:30 AM">1:30 AM</option>
			<option value="02:00 AM">2:00 AM</option><option value="02:30 AM">2:30 AM</option>
			<option value="03:00 AM">3:00 AM</option><option value="03:30 AM">3:30 AM</option>
			<option value="04:00 AM">4:00 AM</option><option value="04:30 AM">4:30 AM</option>
			<option value="05:00 AM">5:00 AM</option><option value="05:30 AM">5:30 AM</option>
			<option value="06:00 AM">6:00 AM</option><option value="06:30 AM">6:30 AM</option>
			<option value="07:00 AM">7:00 AM</option><option value="07:30 AM">7:30 AM</option>
			<option value="08:00 AM">8:00 AM</option><option value="08:30 AM">8:30 AM</option>
			<option value="09:00 AM">9:00 AM</option><option value="09:30 AM">9:30 AM</option>
			<option value="10:00 AM">10:00 AM</option><option value="10:30 AM">10:30 AM</option>
			<option value="11:00 AM">11:00 AM</option><option value="11:30 AM">11:30 AM</option>
			<option value="12:00 PM" 
			selected="selected">12:00 PM</option>
			<option value="12:30 PM">12:30 PM</option><option value="01:00 PM">1:00 PM</option>
			<option value="01:30 PM">1:30 PM</option><option value="02:00 PM">2:00 PM</option>
			<option value="02:30 PM">2:30 PM</option><option value="03:00 PM">3:00 PM</option>
			<option value="03:30 PM">3:30 PM</option><option value="04:00 PM">4:00 PM</option>
			<option value="04:30 PM">4:30 PM</option><option value="05:00 PM">5:00 PM</option>
			<option value="05:30 PM">5:30 PM</option><option value="06:00 PM">6:00 PM</option>
			<option value="06:30 PM">6:30 PM</option><option value="07:00 PM">7:00 PM</option>
			<option value="07:30 PM">7:30 PM</option><option value="08:00 PM">8:00 PM</option>
			<option value="08:30 PM">8:30 PM</option><option value="09:00 PM">9:00 PM</option>
			<option value="09:30 PM">9:30 PM</option><option value="10:00 PM">10:00 PM</option>
			<option value="10:30 PM">10:30 PM</option><option value="11:00 PM">11:00 PM</option>
			<option value="11:30 PM">11:30 PM</option></select></td> 
			
			</tr>
			<tr>
			
			<td><select name="price" class="form-select" onchange="madeAjaxCall(this.value);" id="price">
			
<option value="2" ${employee.price == '2' ? 'selected' : ''}>2</option>
<option value="5" ${employee.price == '5' ? 'selected' : ''}>5</option>
<option value="10" ${employee.price == '10' ? 'selected' : ''}>10</option>
		
</select>
		
	</td>
		
			
			
			</tr>
		</table>
	
	 <h1>Spring Framework Jquery Ajax Demo</h1>
	
	<div id="result"></div>
	 
<form:select path="country" items="${countryList}" /> 
	
<!-- 	<label for="country">Gender: </label>  -->
<%-- <form:select path="country" id="country">  --%>
<%-- <form:option value="">Select Gender</form:option>  --%>
<%-- <form:option value="MALE">Male</form:option>  --%>
<%-- <form:option value="FEMALE">Female</form:option>  --%>
<%-- </form:select> --%>
<!-- <br/>  -->
	
	</form:form>
</body>
</html>