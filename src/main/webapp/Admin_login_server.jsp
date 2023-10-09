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
<!-- <h1>hello</h1> -->
 <%
String username=request.getParameter("Ad_Username");
String password=request.getParameter("Ad_password");
/* System.out.println("name!"+username);
System.out.println("password"+password); */
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_buying", "root", "");
	String sql = "select * from admin_log_info where Admin_name='"+username+"' and Admin_password='"+password+"' ";
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("sessionlog","ADMIN");
		response.sendRedirect("Admin_page.jsp");
	}
	else
	{
		response.sendRedirect(".index.jsp");
	}}
	catch(Exception ex){
	System.out.println("Exception2 "+ex);
}
%> 
</body>
</html>