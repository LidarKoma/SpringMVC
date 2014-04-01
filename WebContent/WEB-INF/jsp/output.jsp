<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" language="javascript" src="http://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
<script type="text/javascript" src="http://www.technicalkeeda.com/js/javascripts/plugin/json2.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Being Java Guys | Spring DI Hello World</title>
<link href="<c:url value="/css/all.css" />" rel="stylesheet">

<link href="${pageContext.request.contextPath}/css/all.css" rel="stylesheet" >
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
	text-align: left;
}

.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}
</style>
<script type="text/javascript">
jQuery( document ).ready(function( $ ) {

	
		$.ajax({
			type: "get",
			url: "http://localhost:8080/SpringJDBCTemplate/insert1",
			cache: false,				
			data:'dateIn=' + $("#dateIn").val() + "&dateOut=" + $("#dateOut").val() + "&timeIn=" + $("#timeIn").val()
			+ "&timeOut=" + $("#timeOut").val(),
			success: function(response){
				$('#result').html("");
				var obj = JSON.parse(response);
				$('#result').html("</br>price:- " + obj.price);
			},
			error: function(){						
				alert('Error while request..');
			}
		});
	

	});


function madeAjaxCall(timeIn){
	$.ajax({
		type: "get",
		url: "http://localhost:8080/SpringJDBCTemplate/insert1",
		cache: false,				
		data:'dateIn=' + $("#dateIn").val() + "&dateOut=" + $("#dateOut").val() + "&timeIn=" + $("#timeIn").val()
		+ "&timeOut=" + $("#timeOut").val(),
		success: function(response){
			$('#result').html("");
			var obj = JSON.parse(response);
			$('#result').html("</br>price:- " + obj.price);
		},
		error: function(){						
			alert('Error while request..');
		}
	});
}
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script> 
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.5.3/jquery-ui.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
    			$("#dateIn").datepicker({ showOn: 'button', buttonImageOnly: true, buttonImage: "css/images/icon_cal.png"});
  		      $("#dateOut").datepicker({ showOn: 'button', buttonImageOnly: true, buttonImage: "css/images/icon_cal.png"});

});
	</script>
</head>
<body>
	<center>
		<br /> <br /> <br /> <b>Being Java Guys | Registration Form </b> <br />
		<br />
			<form:form method="post" action="/hiddenfeild" modelAttribute="user1">
				<table>
					<tr>
						<td>Date In :</td>
						<td><form:input path="dateIn" onchange="madeAjaxCall(this.value);" id="dateIn"/></td>
						<td>Time In :</td>
						<td><form:select path="timeIn" onchange="madeAjaxCall(this.value);" id="timeIn">
								<form:option value="12:00 am" label="12:00 AM" />
								<form:option value="12:30 am" label="12:30 AM" />
								<form:option value="1:00 am" label="2:00 AM" />
								<form:option value="1:30 am" label="1:30 AM" />
								<form:option value="2:00 am" label="2:00 AM" />
								<form:option value="3:3 0am" label="3:30 AM" />
								<form:option value="4:00 am" label="4:00 AM" />
								<form:option value="4:30 am" label="4:30 AM" />
								<form:option value="5:00 am" label="5:00 AM" />
								<form:option value="5:30 am" label="5:30 AM" />
								<form:option value="6:00 am" label="6:00 AM" />
								<form:option value="6:30 am" label="6:30 AM" />
								<form:option value="7:00 am" label="7:00 AM" />
								<form:option value="7:30 am" label="7:30 AM" />
								<form:option value="8:00 am" label="8:00 AM" />
								<form:option value="8:30 am" label="8:30 AM" />
								<form:option value="9:00 am" label="9:00 AM" />
								<form:option value="9:30 am" label="9:30 AM" />
								<form:option value="10:00 am" label="10:00 AM" />
								<form:option value="10:3 0am" label="10:30 AM" />
								<form:option value="11:00 am" label="11:00 AM" />
								<form:option value="11:30 am" label="11:30 AM" />
								<form:option value="12:00 pm" label="12:00 PM" />
								<form:option value="12:30 pm" label="12:30 PM" />
							    <form:option value="12:00 pm" label="12:00 PM" />
								<form:option value="12:30 pm" label="12:30 PM" />
							    <form:option value="1:00 pm" label="1:00 PM" />
								<form:option value="1:30 pm" label="1:30 PM" />
							    <form:option value="2:00 pm" label="2:00 PM" />
								<form:option value="2:30 pm" label="2:30 PM" />
							    <form:option value="3:00 pm" label="3:00 PM" />
								<form:option value="3:30 pm" label="3:30 PM" />
							    <form:option value="4:00 pm" label="4:00 PM" />
								<form:option value="4:30 pm" label="4:30 PM" />
							    <form:option value="5:00 pm" label="5:00 PM" />
								<form:option value="5:30 pm" label="5:30 PM" />
							    <form:option value="6:00 pm" label="6:00 PM" />
								<form:option value="6:30 pm" label="6:30 PM" />
							    <form:option value="7:00 pm" label="7:00 PM" />
								<form:option value="7:30 pm" label="7:30 PM" />
							    <form:option value="8:00 pm" label="8:00 PM" />
								<form:option value="8:30 pm" label="8:30 PM" />
								<form:option value="9:00 pm" label="9:00 PM" />
								<form:option value="9:30 pm" label="9:30 PM" />
								<form:option value="10:00 pm" label="10:00 PM" />
								<form:option value="10:30 pm" label="10:30 PM" />
								<form:option value="11:00 pm" label="11:00 PM" />
								<form:option value="11:30 pm" label="11:30 PM" />
							</form:select></td>
					</tr>
					<tr>
						<td>Date Out :</td>
						<td><form:input path="dateOut" value="${map.user1.dateOut}" onchange="madeAjaxCall(this.value);" id="dateOut"/></td>
					
						
						<td>Time Out :</td>
						<td><form:select path="timeOut">
								<form:option value="12:00 am" label="12:00 AM" />
								<form:option value="12:30 am" label="12:30 AM" />
								<form:option value="1:00 am" label="2:00 AM" />
								<form:option value="1:30 am" label="1:30 AM" />
								<form:option value="2:00 am" label="2:00 AM" />
								<form:option value="3:3 0am" label="3:30 AM" />
								<form:option value="4:00 am" label="4:00 AM" />
								<form:option value="4:30 am" label="4:30 AM" />
								<form:option value="5:00 am" label="5:00 AM" />
								<form:option value="5:30 am" label="5:30 AM" />
								<form:option value="6:00 am" label="6:00 AM" />
								<form:option value="6:30 am" label="6:30 AM" />
								<form:option value="7:00 am" label="7:00 AM" />
								<form:option value="7:30 am" label="7:30 AM" />
								<form:option value="8:00 am" label="8:00 AM" />
								<form:option value="8:30 am" label="8:30 AM" />
								<form:option value="9:00 am" label="9:00 AM" />
								<form:option value="9:30 am" label="9:30 AM" />
								<form:option value="10:00 am" label="10:00 AM" />
								<form:option value="10:3 0am" label="10:30 AM" />
								<form:option value="11:00 am" label="11:00 AM" />
								<form:option value="11:30 am" label="11:30 AM" />
								<form:option value="12:00 pm" label="12:00 PM" />
								<form:option value="12:30 pm" label="12:30 PM" />
							    <form:option value="12:00 pm" label="12:00 PM" />
								<form:option value="12:30 pm" label="12:30 PM" />
							    <form:option value="1:00 pm" label="1:00 PM" />
								<form:option value="1:30 pm" label="1:30 PM" />
							    <form:option value="2:00 pm" label="2:00 PM" />
								<form:option value="2:30 pm" label="2:30 PM" />
							    <form:option value="3:00 pm" label="3:00 PM" />
								<form:option value="3:30 pm" label="3:30 PM" />
							    <form:option value="4:00 pm" label="4:00 PM" />
								<form:option value="4:30 pm" label="4:30 PM" />
							    <form:option value="5:00 pm" label="5:00 PM" />
								<form:option value="5:30 pm" label="5:30 PM" />
							    <form:option value="6:00 pm" label="6:00 PM" />
								<form:option value="6:30 pm" label="6:30 PM" />
							    <form:option value="7:00 pm" label="7:00 PM" />
								<form:option value="7:30 pm" label="7:30 PM" />
							    <form:option value="8:00 pm" label="8:00 PM" />
								<form:option value="8:30 pm" label="8:30 PM" />
								<form:option value="9:00 pm" label="9:00 PM" />
								<form:option value="9:30 pm" label="9:30 PM" />
								<form:option value="10:00 pm" label="10:00 PM" />
								<form:option value="10:30 pm" label="10:30 PM" />
								<form:option value="11:00 pm" label="11:00 PM" />
								<form:option value="11:30 pm" label="11:30 PM" />
							</form:select></td>
					</tr>
										<td><form:hidden path="price"  value="${user1.price}"/></td>
				
					<%-- <tr>
						<td>price: ${user1.price}</td>
						<td><form:hidden path="price"  value="${user1.price}"/></td>
					</tr>
					
					<tr><td>Time IN: ${user1.timeIn}</td>
					 </tr> --%>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" /></td>
					</tr> 
				
				</table>
					<div id="result"></div>
				
			</form:form>
	</center>
</body>
</html>