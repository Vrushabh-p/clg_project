<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
       <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <title>Car Buying Website</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    
    
	   <script >
	   $(document).ready(function() { 
		
		
			$(".btn_delete").click(function(evt){
				
				var cid1=$(this).data("cid");
				 $.post("Car_delete_server.jsp",{  id1: cid1},
						function(data,status){
				});
			});
			
		
	   }); 
</script> 
 </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <div class="sub-header">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-xs-12">
            <ul class="left-info">
              <img src="assets/images/logo_web.png" height="60" width="80">
           
             <li><a href="#"><i class="fa fa-car"></i><h10>Car Buying<em> Website</em></h10></a></li>
              
            </ul>
          </div>
             <!--search bar  -->
           <div class="search">
           <style>
           .search input[type=text]{
        width:250px;
        height:25px;
        border-radius:25px;
        border: none;
    }
   .search button{
        background-color: gray;
        color: #f2f2f2;
        float: right;
        padding: 5px 10px;
        margin-right: 16px;
        font-size: 12px;
        border: none;
        cursor: pointer;
    }
           </style>
            <form action="#">
                <input type="text"placeholder=" Search Cars..." name="search">
                <button>
                    <i class="fa fa-search"
                        style="font-size: 18px;">
                    </i>
                </button>
            </form>
             
        </div>
        
        <!-- login icon -->
        <div >
            <ul class="right-icons">
              
            <li><a href="Index.jsp" ><button style= "border:none; color:black; ">Logout </button></a>
             
            </li>  
            </ul>
          </div> 
        </div>
      </div>
    </div>
    
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.jsp"><h2>Car Dealer<em> Website</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <!-- <a class="nav-link" href="index.jsp">Home
                  <span class="sr-only">(current)</span>
                </a> -->
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="Admin_page.jsp">Add Cars</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="Customers_info.jsp">Customers</a>
              </li>
               <!-- <li class="nav-item">
                <a class="nav-link" href="contact.jsp">login_info</a>
              </li> -->
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <div class="page-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1>Welcome, <br> Admin</h1>
            <span></span>
          </div>
        </div>
      </div>
    </div>
    <br>


<!-- For add car alert   --> 
    
     <%
					String sessionsuccess = (String) session.getAttribute("sessionsuccess");
					if(sessionsuccess==null)
					{	
						
						
					}else
					{
						%>
						<script> 
						alert("<%=sessionsuccess%>")
							swal("Car Added Successfully!!!!!", "<%=sessionsuccess%>", "success");
						</script>
						 <%-- <div class="alert alert-danger" style="text-align: center"><%=sessionsuccess%> --%>
						<%
						session.setAttribute("sessionsuccess", null);
					}
				
				%> 
	<!-- 			
				
	popup edit form
	<div id="unit_form1">
	<form>
	Car id :<input type="text" value="">
	</form>
	
	</div> -->			
 <!-- car info table -->
 <div id="table1">
 
 <table  class="table table-striped table-bordered" style="width:96%" id="item_table9">
			
				  <tr>
					    <th>Car  Id</th>
            			<th>Car Company</th>
            			<th>Car Model</th>
            			<th>Car Color</th>
            			<th>Car Engine</th>
            			<th>Car Capacity</th>
            			<th>Car Price</th>
            			<th>Delete</th>
				  </tr>
			
		   		  <tbody>
							<%
						try {
							Class.forName("com.mysql.jdbc.Driver");
							Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_car_buying", "root", "");
							String sql = "select * from car_detail";
							PreparedStatement pst1 = con1.prepareStatement(sql);
							ResultSet rs1 = pst1.executeQuery();
							while (rs1.next()) {
						%>
						<tr>
							<td><%=rs1.getString("Car_id")%></td>
							<td><%=rs1.getString("Car_company")%></td>
							<td><%=rs1.getString("Car_model")%></td>
							<td><%=rs1.getString("Car_color")%></td>
							<td><%=rs1.getString("Car_engine")%></td>
							<td><%=rs1.getString("Car_capacity")%></td>
							<td><%=rs1.getString("Car_price")%></td>
							<td><button class="btn_delete" data-cid="<%=rs1.getString("Car_id")%>">Delete</button></td>
							
						</tr>
						<%
						}
						} catch (Exception ex) {
							System.out.println("Exception "+ex);
						}
						%> 
			</tbody>
			<tr><td><a href="Add_car.jsp"><button >Add Car</button></a></td></tr>
			</table>
			</div>
 
 <br>
<!-- for login alert -->

    <%
					String sessionlog = (String) session.getAttribute("sessionlog");
					if(sessionlog==null)
					{	
						
						
					}else
					{
						%>
						<script> 
						 alert("<%=sessionlog%>"); 
							swal("login successfully!!!!!", "<%=sessionlog%>", "success");
						</script>
						  <%-- <div class="alert alert-danger" style="text-align: center"><%=sessionlog%></div> --%>
						<%
						session.setAttribute("sessionlog", null);
					}
				
				%>
				
				
				<!-- For delete car alert   --> 
				
				 <%-- <%
					String sessiondelete1 = (String) session.getAttribute("sessiondelete1");
					if(sessiondelete1==null)
					{	
						
						
					}else
					{
						%>
						<script> 
						 alert("<%=sessiondelete1%>"); 
							swal("deleted successfully!!!!!", "<%=sessiondelete1%>", "success");
						</script>
						  <div class="alert alert-danger" style="text-align: center"><%=sessionlog%></div>
						<%
						session.setAttribute("sessiondelete1", null);
					}
				
				%> --%>
    
     
    <!-- Footer Starts Here -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-3 footer-item">
            <h4>Car Dealer Website</h4>
            <p></p>
            <ul class="social-icons">
              <li><a rel="nofollow" href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
          <div class="col-md-3 footer-item">
            <h4>Useful Links</h4>
            <ul class="menu-list">
              <li><a href="#">Vivamus ut tellus mi</a></li>
              <li><a href="#">Nulla nec cursus elit</a></li>
              <li><a href="#">Vulputate sed nec</a></li>
              <li><a href="#">Cursus augue hasellus</a></li>
              <li><a href="#">Lacinia ac sapien</a></li>
            </ul>
          </div>
          <div class="col-md-3 footer-item">
            <h4>Additional Pages</h4>
            <ul class="menu-list">
              <li><a href="#">About Us</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Contact Us</a></li>
              <li><a href="#">Terms</a></li>
            </ul>
          </div>
          <div class="col-md-3 footer-item last-item">
            <h4>Contact Us</h4>
            <div class="contact-form">
              <form id="contact footer-contact" action="" method="post">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="name" type="text" class="form-control" id="name" placeholder="Full Name" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="email" type="text" class="form-control" id="email" pattern="[^ @]*@[^ @]*" placeholder="E-Mail Address" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your Message" required=""></textarea>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="filled-button">Send Message</button>
                    </fieldset>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </footer>
    
    <div class="sub-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <p>
                 Company Name
                
            </p>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/accordions.js"></script>

    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>

  </body>
</html>