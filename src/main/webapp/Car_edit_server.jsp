<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
       <%@ page import="java.util.*" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
 <%
	String C_id=request.getParameter("id1"); 
	System.out.println("Item Edit"+C_id);
	
	session.setAttribute("a1",""+C_id);
	response.sendRedirect("demo.jsp");
	
%>  
</body>
</html>




