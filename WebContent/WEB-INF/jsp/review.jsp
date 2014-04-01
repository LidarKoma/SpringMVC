<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<br /> <br /> <br /> <b>Being Java Guys | Registration Form </b> <br />
		<br />
		<div>
		
		
			<form:form method="post" action="/reviewResult" modelAttribute="review">
				<table>
					<tr>
						<td>Email :</td>
						<td><form:input path="email" /></td>
					</tr>
						<tr>
						<td>Date Out :</td>
						<td><form:select path="yourVote">
						 <form:option value="" label="Choose a rating" />
					     <form:option value="5" label="5 star" />
					     <form:option value="4" label="4 star" />
					     <form:option value="3" label="3 star" />
					     <form:option value="2" label="2 star" />
					    <form:option value="1" label="1 star" />
					    </form:select></td>
					</tr>
					<tr>
						<td>Date Out :</td>
						<td><form:select path="shuttleWaitTime">
						 <form:option value="" label="Tell us how long you waited" />
					     <form:option value="1" label="No time, shuttle was waiting" />
					     <form:option value="2" label="Less than 5 minutes" />
					     <form:option value="3" label="5-10 minutes" />
					    <form:option value="4" label="10-15 minutes" />
					    <form:option value="5" label="15-20 minutes" />
					    <form:option value="6" label="20-30 minutes" />
					    <form:option value="7" label="More then 30 minutes" />
					    </form:select></td>
					</tr>
					<tr>
						<td>Your Name :</td>
						<td><form:input path="yourName" /></td>
					</tr>
					<tr>
						<td>review title :</td>
						<td><form:input path="reviewTitle" /></td>
					</tr>
					<tr>
						<td>Your Review :</td>
						<td><form:textarea path="yourReview" rows="10" cols="50"/></td>
					</tr>
					
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" /></td>
					</tr>
				</table>
			</form:form>
		</div>
	</center>




</body>
</html>