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


ul{border:0; margin:0; padding:0;}

 #pagination-flickr li{

 border:0; margin:0; padding:0;
 font-size:11px;
 list-style:none;

 }
 #pagination-flickr a{

 border:solid 1px #DDDDDD;
 margin-right:2px;
  font-size: 19px;
 }
 #pagination-flickr .previous-off {
  color:#666666;
 display:block;
 float:left;
 font-weight:bold;
 padding:3px 4px;
 }
 #pagination-flickr .next-off {

 color:#666666;
 display:block;
 float:left;
 font-weight:bold;
 padding:3px 4px;
 }
 #pagination-flickr .next a,
 #pagination-flickr .previous a {
 

 font-weight:bold;
 border:solid 1px #FFFFFF;
 } 
 #pagination-flickr .active{
 font-size: 20px;
 color:#ff0084;
 font-weight:bold;
 display:block;
 float:left;
 padding:4px 6px;
 }
 #pagination-flickr a:link,
 #pagination-flickr a:visited {

 color:#0063e3;
 display:block;
 float:left;
 padding:3px 6px;
 text-decoration:none;
 }
 #pagination-flickr a:hover{

 border:solid 1px #666666;
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

	
		<br /> <br /> <br /> <b>User
			List | Being Java Guys </b><br /> <br />
			
		
<img src="img/star_active.gif" alt="Smiley face" width="42" height="42">
<br>

		
			<c:forEach var="review" items="${map.reviewList}">
				
					${review.date} <br>
					<c:if test="${review.yourVote==5}">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
</c:if>
			
<c:if test="${review.yourVote==4}">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
</c:if>
<c:if test="${review.yourVote==3}">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
</c:if>
			
<c:if test="${review.yourVote==2}">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
</c:if>

<c:if test="${review.yourVote==1}">
<img src="img/star_active.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
</c:if>
			
<c:if test="${review.yourVote==0}">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
<img src="img/star_passive.gif" width="18" height="18">
</c:if>
				    <p style="width : 500px;">
 				    ${review.yourReview}<br>
                    </p>
				<hr align="left" width="500px"> 
				
			</c:forEach>
		   <%--For displaying Previous link except for the 1st page --%>
    <c:if test="${currentPage != 1}">
        <td><a href="reviewList.do?page=${currentPage - 1}">Previous</a></td>
    </c:if>
		
<%--For displaying Page numbers.
    The when condition does not display a link for the current page--%>
    <table border="1" cellpadding="5" cellspacing="5">
        <tr>
            <c:forEach begin="1" end="${map.noOfPages}" var="i">
            
                <c:choose>
                    <c:when test="${map.currentPage eq i}">
                        <td>${i}</td>
                    </c:when>
                    <c:otherwise>
                    
                        <td><a href="reviewList?page=${i}">${i}</a></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </tr>
    </table>
     <%--For displaying Next link --%>
    <c:if test="${currentPage lt noOfPages}">
        <td><a href="reviewList.do?page=${currentPage + 1}">Next</a></td>
    </c:if>
    

<ul id="pagination-flickr">

 
    <c:if test="${currentPage != 1}">
    <li class="previous"><a href="reviewList.do?page=${currentPage - 1}">«Previous</a></li>
    
    </c:if>


            <c:forEach begin="1" end="${map.noOfPages}" var="i">
            
                <c:choose>
                    <c:when test="${map.currentPage eq i}">
                        <li class="active">${i}</li>
                    </c:when>
                    <c:otherwise>
                    
                        <li><a href="reviewList?page=${i}">${i}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
          
          <c:if test="${currentPage lt noOfPages}">
       
<li class="next"><a href="reviewList.do?page=${currentPage + 1}">Next »</a></li>
    </c:if>

</ul> 

</body>
</html>