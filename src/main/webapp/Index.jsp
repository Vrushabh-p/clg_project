<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Car buying Website </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <script >

$(document).ready(function() { 
	
	$("#rgf").click(function(){
		
		$("#myModal2").show();
		$("#model").hide();
		
		
	});
	
	$(".rgf").click(function(){
	
		$("#myModal2").show();
		$("#model").hide();
		
		
	});
	});
</script >
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
              
            <li><a  type="button" href="#" data-toggle="modal" data-target="#myModal"><img src="assets/images/login_logo.png" height="50" width="50"></a> 
            <!-- <a1  type="button" href="#" data-toggle="modal" data-target="#myModal2">Register</a1>    -->
            </li>  
            </ul>
          </div> 
          
        </div>
      </div>
    </div>

    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
         
          <a class="navbar-brand" href="index.jsp"><img src="assets/images/logo_web.png" height="60" width="80"><h2>Car Buying<em> Website</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
             
                <a class="nav-link" href="Index.jsp">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li>
               <li class="nav-item ">
             	<li><a  class="nav-link" type="button" href="#" data-toggle="modal" data-target="#myModal3">Admin</a> 
                
                 
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="cars.jsp"> Cars</a>
              </li>
              <li class="nav-item dropdown">
                <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">About</a>
              
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="about.jsp">About Us</a>
                    <a class="dropdown-item" href="blog.jsp">Blog</a>
                    <a class="dropdown-item" href="team.jsp">Team</a>
                 
                    <a class="dropdown-item" href="terms.jsp">Terms</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="main-banner header-text" id="top">
        <div class="Modern-Slider">
          <!-- Item -->
          <div class="item item-1">
            <div class="img-fill">
                <div class="text-content">
                  <h6>Want to buy car ?</h6>
                  <h4> Get your dream car at <br>your finger tips... </h4>
                  <p></p>
                  <a href="cars.jsp" class="filled-button">Cars</a>
                </div>
            </div>
          </div>
          <!-- // Item -->
          <!-- Item -->
          <div class="item item-2">
            <div class="img-fill">
                <div class="text-content">
                  
                  <h4>If you are not driving your dream car,<br> go back to work.</h4>
                  
                  <a href="about.jsp" class="filled-button">About Us</a>
                </div>
            </div>
          </div>
          <!-- // Item -->
          <!-- Item -->
          <div class="item item-3">
            <div class="img-fill">
                <div class="text-content">
                  
                  <h4>Book your dream car <br>from anywhere   </h4>
                  
                  <a href="contact.jsp" class="filled-button">Contact Us</a>
                </div>
            </div>
          </div>
          <!-- // Item -->
        </div>
    </div>
    <!-- Banner Ends Here -->

    <div class="request-form">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <h4>If you are not driving your dream car,<br> go back to work.</h4>
            <span>   </span>
          </div>
          <div class="col-md-4">
            <a href="contact.jsp" class="border-button">Contact Us</a>
          </div>
        </div>
      </div>
    </div>

    <div class="services">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Featured <em>Cars</em></h2>
              <span>  </span>
            </div>
          </div>
          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/product-1-720x480.jpg" alt="">
              <div class="down-content">
                <h4></h4>
                <div style="margin-bottom:10px;">
                  <span>
                      <del><sup>rs.</sup>1199900 </del> &nbsp; <sup>rs.</sup>1177900
                  </span>
                </div>

                <p>
                  <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                </p>
                <a href="car-details.jsp" class="filled-button">View More</a>
              </div>
            </div>
            
            <br>
          </div>
          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/product-2-720x480.jpg" alt="">
              <div class="down-content">
                <h4></h4>
                <div style="margin-bottom:10px;">
                  <span>
                      <del><sup>rs.</sup>1199999 </del> &nbsp; <sup>rs.</sup>1177999
                  </span>
                </div>

                <p>
                  <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                </p>
                <a href="car-details.jsp" class="filled-button">View More</a>
              </div>
            </div>

            <br>
          </div>
          <div class="col-md-4">
            <div class="service-item">
              <img src="assets/images/product-3-720x480.jpg" alt="">
              <div class="down-content">
                <h4></h4>
                <div style="margin-bottom:10px;">
                  <span>
                      <del><sup>rs.</sup>1199900 </del> &nbsp; <sup>rs.</sup>1177900
                  </span>
                </div>

                <p>
                  <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                  <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                </p>
                <a href="car-details.jsp" class="filled-button">View More</a>
              </div>
            </div>

            <br>
          </div>
        </div>
      </div>
    </div>

    <div class="fun-facts">
      <div class="container">
        <div class="more-info-content">
          <div class="row">
            <div class="col-md-6">
              <div class="left-image">
                <img src="assets/images/about-1-570x350.jpg" class="img-fluid" alt="">
              </div>
            </div>
            <div class="col-md-6 align-self-center">
              <div class="right-content">
                <span>Who we are</span>
                <h2>Get to know about <em>our company</em></h2>
                <p></p>
                <a href="about.jsp" class="filled-button">Read More</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="more-info">
      <div class="container">
        <div class="section-heading">
          <h2>Read our <em>Blog</em></h2>
          <span></span>
        </div>

        <div class="row" id="tabs">
          <div class="col-md-4">
           <br>
			<div class="text-center">
              <a href="blog.jsp" class="filled-button">Read More</a>
            </div>
		   <br>
          </div>

          <div class="col-md-8">
            <section class='tabs-content'>
              <article id='tabs-1'>
                <img src="assets/images/blog-image-1-940x460.jpg" alt="">
                <h4><a href="blog-details.jsp"></a></h4>
                </article>
              <article id='tabs-2'>
                <img src="assets/images/blog-image-2-940x460.jpg" alt="">
                <h4><a href="blog-details.jsp"></a></h4>
                 </article>
              <article id='tabs-3'>
                <img src="assets/images/blog-image-3-940x460.jpg" alt="">
                <h4><a href="blog-details.jsp"></a></h4>
              </article>
            </section>
          </div>
        </div>
		</div>
    </div>

    <div class="testimonials">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>What they say <em>about us</em></h2>
              
            </div>
          </div>
          <div class="col-md-12">
          
          </div>
        </div>
      </div>
    </div>

    <div class="callback-form">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Request a <em>call back</em></h2>
              
            </div>
          </div>
          <div class="col-md-12">
            <div class="contact-form">
              <form id="contact" action="" method="post">
                <div class="row">
                  <div class="col-lg-4 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="name" type="text" class="form-control" id="name" placeholder="Full Name" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-4 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="email" type="text" class="form-control" id="email" pattern="[^ @]*@[^ @]*" placeholder="E-Mail Address" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-4 col-md-12 col-sm-12">
                    <fieldset>
                      <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your Message" required=""></textarea>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="border-button">Send Message</button>
                    </fieldset>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <br>
        <br>
        <br>
        <br>
      </div>
    </div>
    
    <!--Customer login form -->
    <!-- The Modal -->
     <div class="modal" id="myModal"   >
     <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Customer Sign In</h4>
                    <button type="button" class="close" data-dismiss="modal">x</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <form action="Customer_login_server.jsp" method="post">
                     
                       <div>
                        
                            <div >
                            <label class="sr-only" for="usrname">Username</label>
                                <span class="inpddut-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                            </div>
                            <input type="text" class="form-control"  name="Username" placeholder="Enter username" required >
                        </div> <br>


                        <div>
                        	<div >
                            <label class="sr-only" for="password">Password</label>
                                <span class="inpddut-group-text" id="basic-addon1"><i class="fa fa-key"></i></span>
                            </div>
                            <input type="Password" class="form-control"  name="Password" placeholder="Enter password" required >
                        </div><br>
                        
                        <div class ="text-center">
                        <button type="submit" class="btn btn-primary" >Login</button>
                        </div> <br>
                     	<div class ="text-center"> 
                    	<a  type="button" href="#"  >Forget Password ?</a> 
                   		</div><br>
                    	<div class ="text-center" id="rgf">
                   		  <p style="color:black; font-weight:bold; ">Don't have account? <a  type="button" href="#" data-toggle="modal" data-target="#myModal2" data-close="##myModal" > Sign Up</a> </p>
                    	</div>
</form>
            </div>
        </div>
    </div> 
    </div>
    
    <!-- Registration form -->
    
    <div class="modal" id="myModal2">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">
                                <center><h4 class="modal-title"><font color="red"><b> Registration Form</br></h4></center>
                                    <button type="button" class="close" data-dismiss="modal">X</button>
                            </div>
                            <div class="modal-body">
                               <center> <form action="Registration_Server.jsp" method="post">
                               			<br><br>
                                     <font color="black"><b><label>Full Name :</label></b>
                                    <input type="text" name="fname" id="fname" placeholder="Enter Your Full Name" required><br><br>
                                    <b><label>Mobile no :</label></b>
                                    	<input type="text" name="mob_num" id="mob_num" placeholder="Enter Your 10 digit number" required><br><br>
                                    <b><label>Password :</label>
                                        <input type="password" name="pass" id="pass" placeholder="Enter your Correct Password" required><br><br>
                                    <b> <label>Email :</label></b>
                                        <input type="email" name="email" id="email" placeholder="Enter Your Valid Email" required><br><br>
                                   
                                        
                                            
                                            
                                          <div class="text-center" >
                                            
                                                <button type="submit" class="btn btn-primary" >Submit</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                                <br><br>
                                                
                                            </div>
                                            </form>
                                            </div>
                        </div>
               </div>
    </div>
    
    
    <!-- Admin login form -->
    
     <div class="modal" id="myModal3"   >
     <div class="modal-dialog">
            <div class="modal-content">
			<div class="modal-header">
                    <h4 class="modal-title">Admin Sign In</h4>
                    <button type="button" class="close" data-dismiss="modal">x</button>
            </div>
			<div class="modal-body">
                 <form action="Admin_login_server.jsp" method="post">
                   <div>
                    <div >
                            <label class="sr-only" for="usrname">Username</label>
                                <span class="inpddut-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                    </div>
                            <input type="text" class="form-control"  id="Ad_Username" name="Ad_Username" placeholder="Enter username" required >
                        </div> <br>


                        <div>
                        	<div >
                            <label class="sr-only" for="password">Password</label>
                                <span class="inpddut-group-text" id="basic-addon1"><i class="fa fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control"  id="Ad_password" name="Ad_password" placeholder="Enter password" required >
                        </div><br>
                        
                        <div class ="text-center">
                        <button type="submit" class="btn btn-primary" >Login</button>
                        </div> <br>
                     	
                    	
</form>
            </div>
        </div>
    </div> 
    </div>
                      
               
 <!-- Footer Starts Here -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-3 footer-item">
            <h4>Car Buying Website</h4>
            <p></p>
            <ul class="social-icons">
              <li><a rel="nofollow" href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
          <div class="col-md-3 footer-item">
            
           
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
    
    <!-- For Ragistration alert -->
  
   <%
					String sessionsuccess1 = (String) session.getAttribute("sessionsuccess1");
					if(sessionsuccess1==null)
					{	
						
						
					}else
					{
						%>
						<script> 
						alert("<%=sessionsuccess1%>")
							swal("Customer Added Successfully!!!!!", "<%=sessionsuccess1%>", "success");
						</script>
						<%-- <!--  <div class="alert alert-danger" style="text-align: center"><%=sessionsuccess%>--> --%>
						<%
						session.setAttribute("sessionsuccess1", null);
					}
				
				%> 

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