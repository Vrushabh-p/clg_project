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
	System.out.println("Item Delete1 "+C_id);
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_buying", "root", "");
	String sql = "delete from car_detail where Car_id='"+C_id+"'";
	PreparedStatement pst1 = con.prepareStatement(sql);
	int j = pst1.executeUpdate();
	if(j>0)
	{
		session.setAttribute("sessiondelete1","Deleted");
		response.sendRedirect("Admin_page.jsp");
		
	}
	else
	{
		response.sendRedirect("Index.jsp");
	}}
	catch(Exception ex){
	System.out.println("Exception1 "+ex);
} 
%> 
</body>
</html>




