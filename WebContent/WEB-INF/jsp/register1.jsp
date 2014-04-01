<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Being Java Guys | Spring DI Hello World</title>
<link href="<c:url value="/css/all.css" />" rel="stylesheet">

<link href="${pageContext.request.contextPath}/css/all.css" rel="stylesheet" >
<style>
.error {
	color: #ff0000;
}
 
.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	width: 700px ;
 margin-left: auto ;
  margin-right: auto ;
}
#content {
width: 700px ;
  margin-left: auto ;
  margin-right: auto ;
}
</style>

</head>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script> 
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.5.3/jquery-ui.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
    			$("#dateIn").datepicker({ showOn: 'button', buttonImageOnly: true, buttonImage: "css/images/icon_cal.png"});
  		      $("#dateOut").datepicker({ showOn: 'button', buttonImageOnly: true, buttonImage: "css/images/icon_cal.png"});

});
	</script>
<body>
	<div id="content">
		<br /> <br /> <br /> <b>Being Java Guys | Registration Form </b> <br />
		<br />
	
			<form:form method="post" action="/insert1" modelAttribute="user1">
            <form:errors path="*" cssClass="errorblock" element="div" />				
<table>
					<tr>
						<td>Date In :</td>
						<td><form:input path="dateIn" id="dateIn" /></td>
						<td><form:errors path="dateIn" cssClass="error" /></td>
						<td>Time In :</td>
						
						<td><form:select path="timeIn">
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
						<td><form:input path="dateOut" /></td>
						<td><form:errors path="dateOut" cssClass="error" /></td>
						
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
					<tr>
						<td>Price ID :</td>
						<td><form:input path="priceId" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" /></td>
					</tr>
				</table>
			</form:form>
		</div>
</div>
	
</body>
</html>