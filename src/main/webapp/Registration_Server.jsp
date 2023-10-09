<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
       <%@ page import="java.util.*" %>
        
       
      
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">
<title></title>
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>


                                       
 <%
 String fname=request.getParameter("fname");
 String mob_num=request.getParameter("mob_num");
 String pass=request.getParameter("pass");
 String email=request.getParameter("email");
 
 

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_buying", "root", "");
	String sql = "insert into user_registration (Full_name,Mobile,Password,Email) values('"+fname+"','"+mob_num+"','"+pass+"','"+email+"')";
	PreparedStatement pst = con.prepareStatement(sql);
	int j = pst.executeUpdate();
	if(j>0)
	{
		session.setAttribute("sessionsuccess1",""+fname);
		response.sendRedirect("Index.jsp");
		System.out.println("data added successfully");
		
		
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