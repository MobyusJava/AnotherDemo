<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%
   // get the user's Locale
   Locale userLocale = request.getLocale();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Where am I</title>
</head>
<body>
Your location is <%=userLocale.getCountry() %>.<br>
Your language is <%=userLocale.getLanguage() %>:
or in <%=userLocale.getDisplayLanguage(new Locale("en")) %> <%=userLocale.getDisplayLanguage() %>
</body>
</html>