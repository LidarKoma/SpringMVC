<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Being Java Guys | Spring DI Hello World</title>


</head>
<body>


	
	

	<center>
	
		<br /> <br /> <br /> <b>User
			List | Being Java Guys </b><br /> <br />
			
		<tr>
					
					<td><a href="allproducts?category_id=19">All</a></td>
				</tr>

		<table border="1">
			
			<c:forEach var="supcategory" items="${supcategoryList}">
				<tr>
					
					<td><a href="products?category_id=${supcategory.category_id}">${supcategory.category_name}</a></td>
				</tr>
				
			</c:forEach>
		</table>

	</center>

</body>
</html>