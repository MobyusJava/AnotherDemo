<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*" %>
<%
	   // creation time of session
	   Date create = new Date(session.getCreationTime());
	 
	   String key = new String("visitCount");
	    
	   Integer visitCount = (Integer)session.getAttribute(key);
	   if(visitCount == null){
		   visitCount = new Integer(0);
	   }
	   visitCount = visitCount + 1;
	  // session.setAttribute(key,  visitCount);
	   
	   session.setAttribute(key, visitCount);
	   
%>
<html>
<head>
<title>My Session Tracking</title>
</head>
<body>
<h1>Your Session Tracking</h1>
<table border="1">
	<tr>
	   <th>Session Information</th>
	   <th>Value</th>
	</tr>
	<tr>
	   <td>id</td>
	   <td><% out.print(session.getId()); %></td>
	</tr>
	<tr>
	   <td>Creation Time</td>
	   <td><% out.print(create); %></td>
	</tr>
	 
	<tr>
	   <td>Number of visits</td>
	   <td><% out.print(visitCount); %></td>
	</tr>
</table>
</body>
</html>