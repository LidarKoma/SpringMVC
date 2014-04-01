<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- register_confirm.jsp -->

  
  <form:form method="post" action="/insertToDatabase" modelAttribute="user1">
      Date In: ${user1.dateIn}<br />  Date Out: ${user1.dateOut}<br />  price: ${user1.price}<br />
  
				<table>
					<tr>
						<td>Date In :</td>
						<td><form:hidden path="dateIn" />${user1.dateIn}</td>
					</tr>
					<tr>
						<td>Date Out :</td>
						<td><form:hidden path="dateOut" />${user1.dateOut}</td>
					</tr>
					<tr>
						<td>Price ID :</td>
						<td><form:hidden path="priceId" />${user1.priceId}</td>
					</tr>
					<tr>
					<tr>
						<td>Price :</td>
						<td><form:hidden path="price" />${user1.price}</td>
					</tr>
					<tr>
						<td>First Name :</td>
						<td><form:input path="firstName" value="${map.user1.firstName}" /></td>
					</tr>
					<tr>
						<td>Last Name :</td>
						<td><form:input path="lastName" value="${map.user1.lastName}" /></td>
					</tr>
					<tr>
						<td>Email :</td>
						<td><form:input path="email" value="${map.user1.email}" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" /></td>
					</tr>
				</table>
			</form:form>
  
</body>
</html>