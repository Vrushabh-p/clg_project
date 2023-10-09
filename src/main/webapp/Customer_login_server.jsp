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
String username=request.getParameter("Username");
String password=request.getParameter("Password");
System.out.println("name!"+username);
System.out.println("password"+password); 
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_buying", "root", "");
	String sql = "select * from user_registration where Email='"+username+"' and Password='"+password+"' ";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("session_User_log",""+username);
		response.sendRedirect("Home.jsp");
	}
	else
	{
		response.sendRedirect("Index.jsp");
	}}
	catch(Exception ex){
	System.out.println("Exception2 "+ex);
}
%> 
</body>
</html>