<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
   <html class="no-js">
	<head>

		<title><tiles:getAsString name="title"/></title>
		<tiles:insertAttribute name="header" />
		

	</head>
  
  <body>
  
  		<tiles:insertAttribute name="menu" />
  
  	<div class='wrap'>
  		
	
	  		<div class="page_content">
	  			<tiles:insertAttribute name="body"/>
	  		</div>
  		
  		<tiles:insertAttribute name="footer" />
  	</div>
  </body>
  
</html>