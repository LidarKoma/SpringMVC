<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script type="text/javascript">
function madeAjaxCall(firstName){
	$.ajax({
		type: "post",
		url: "http://localhost:8080/SpringJDBCTemplate/output1",
		cache: false,				
		data:'timeIn=' + $("#timeIn").val() + "&timeOut=" + $("#timeOut").val() + "&email=",
		success: function(response){
			$('#result').html("");
			var obj = JSON.parse(response);
			$('#result').html("timeIn:- " + obj.timeIn +"</br>timeOut:- " + obj.Out  + "</br>price:- " + obj.price);
		},
		error: function(){						
			alert('Error while request..');
		}
	});
}
</script>

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
</head>
<body>
	<center>
		<br /> <br /> <br /> <b>Being Java Guys | Registration Form </b> <br />
		<br />
		<div>
			<form:form method="post" action="/hiddenfeild" modelAttribute="user1">
				<table>
					<tr>
						<td>Date In :</td>
						<td><form:input path="dateIn" value="${map.user1.dateIn}" /></td>
						<td>Time Out :</td>
						<td><form:select path="timeIn" onchange="madeAjaxCall(firstName)" id="timeIn">
								<form:option value="12:00 am" label="12:00 AM" />
								<form:option value="12:30 am" label="12:30 AM" />
								<form:option value="1:00 am" label="1:00 AM" />
								<form:option value="1:30 am" label="1:30 AM" />
								<form:option value="2:00 am" label="2:00 AM" />
								<form:option value="3:30 am" label="3:30 AM" />
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
								<form:option value="10:30 am" label="10:30 AM" />
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
						<td><form:input path="dateOut" value="${map.user1.dateOut}" /></td>
					</tr>
					<tr>
						<td>Price ID :</td>
						<td><form:input path="priceId" value="${map.user1.priceId}" /></td>
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
								<form:option value="10:30 am" label="10:30 AM" />
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
					<div id="result">
						<td>Time IN: ${user.timeIn}</td>
						<td><form:hidden path="timeIn"  value="${user.timeIn}"/></td>
						<td>price: ${user.price}</td>
						<td><form:hidden path="price"  value="${user.price}"/></td>
						</div>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" /></td>
						<a href="insert1">Insert1</a>
					</tr>
				</table>
			</form:form>
		</div>
	</center>
	
</body>
</html>