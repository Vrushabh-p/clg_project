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
<!-- <h1>hello</h1> -->

                                       
 <%
String car_id=request.getParameter("car_id");
 String car_company=request.getParameter("car_company");
 String car_model=request.getParameter("car_model");
 String car_price=request.getParameter("car_price");
 String car_color=request.getParameter("car_color");
String car_Engine=request.getParameter("car_Engine");
String car_capacity=request.getParameter("car_capacity");
String car_img=request.getParameter("myfile");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_buying", "root", "");
	String sql = "insert into car_detail(Car_id,Car_company,Car_model,Car_color,Car_engine,Car_capacity,Car_price,Car_image) values('"+car_id+"','"+car_company+"','"+car_model+"','"+car_color+"','"+car_Engine+"','"+car_capacity+"','"+car_price+"','"+car_img+"')";
	PreparedStatement pst = con.prepareStatement(sql);
	int j = pst.executeUpdate();
	if(j>0)
	{
		session.setAttribute("sessionsuccess",""+car_model);
		response.sendRedirect("Admin_page.jsp");
	
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