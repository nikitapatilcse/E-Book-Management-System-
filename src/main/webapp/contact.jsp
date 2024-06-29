<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact page </title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration-none;
}
i.size{
font-size:40px;
}



</style>
</head>
<body style="background-color:#f7f7f7;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"/>
	</c:if>
			
			

	<%@include file="all_component/navbar.jsp"%>
		
		
		<table class="table">
			  <thead>
			    <tr>
			      <h3 class="text-center p-3"><u><em><i>CONTACT US<i></em></u></h3>
			      <!--<th scope="col"><h3 class="text-center p-3"><u><em><i>CONTACT US<i></em></u></h3></th>
			      <th scope="col"><h3 class="text-center p-3"><u><em><i>OUR LOCATION <i></em></u></h3></th>
			        -->
			    </tr>
			  </thead>
			  <tbody>
			    <tr class="text-center p-3">
				     <td>
				     	<div class="contact-form-container">
					        <h1>Contact Us</h1>
					        
					      
				     	<div class="icons">
	   			 		  	<i class="fa-solid fa-envelope size" style="color:red"></i>
	   			 		</div>
	   			 		<div class="content">
	   			 		  	<strong><h4>Email:</h4></strong>
	   			 		  	<a href="MailTo:adminonline@123.com"><p><h5>adminonline@123.com</a></p></h5>
	   			 		 </div>
	   			 		 
	   			 		 <div class="icons">
		   			 		  <i class="fa-solid fa-phone-volume size" style="color:#0000FF"></i>
		   			 	  </div>
		   			      <div class="content">
		   			 		  <strong><h4>Call:</h4></strong>
		   			 		  <a href="tel: +91 8208681085"><i class="fa fa-phone" style="color:#0000FF"></i><b>+91 8208681085</b></a>
		   			 		  				
		   			 	  </div>
		   			 	 </div>
	   			 		 
				     </td>
				     
				     
				     <td>
					     
		   			 		  
		   			 	 <div class="map-container">
		   			 		  <!-- <i class="fa-solid fa-location-dot" style="color:#0000FF"></i><h2 >Our Location</h2> -->
		   			 		  <h2 >Our Location</h2>
		       				  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60546.79900907396!2d73.74032981510919!3d18.475733500000008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2957f9d02527b%3A0xf3f81991cea71b5c!2sGanpati%20Matha!5e0!3m2!1sen!2sin!4v1716096627894!5m2!1sen!2sin" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		       									
		   			 	</div>
				      
				     </td>
			      
			    </tr>
			   
			   </tbody>
			</table>

    		 	
	    	<div>
	    		<marquee><p><h5>A108 Adam Street, New Your ,NY 5346789 A108 Adam Street, New Your ,NY 5346789 </h5></p></marquee>
	    	</div>
    		 
    		  	
    		
    	

<%@include file="all_component/footer.jsp"%>
</body >

</html>
