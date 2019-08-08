<%@page import="Database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="True"%>
<%!
    Object[][] data;
%>
<%
    Database d = new Database();
    data = d.allProducts();
    session.setAttribute("database", d);
     String nameError, passError;
     nameError = passError = "";
     boolean error=false;
     String fnameError, lnamError,userError,emailError,repassError,addressError,genderError;
     fnameError = lnamError = userError = emailError  = repassError = addressError = genderError= "";
     
     String action = "signin";
    
    if("POST".equals(request.getMethod())  && request.getParameter("login") != null){ 
        action = "signin";
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username +" "+ password);
         if(username.equals("")){
                nameError = "Your username dose not matched!!";
                error = true;
          }
          if(password.equals("")){
                passError = "Password incorrect--!!--";
                error = true;
          }
     }
    else if("POST".equals(request.getMethod())  && request.getParameter("register") != null){ 
        action = "register";
        String firstname = request.getParameter("firstName");
        String lastname = request.getParameter("lastName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String cpassword = request.getParameter("cpassword");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
          if(cpassword.equals(password)){
                repassError = "Two password does not matched";
                error = true;
          }
     }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/Footer-with-button-logo.css" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
       
        
    <link href="CSS/bg-modal.css" rel="stylesheet">
    <script src="Js/bg-modal.js"></script>
    </head>
    <body>
        
        
        <!--NavBar------------------------------------------------------------->
        <nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="Photos/Logo/bigLogoWhite.png" width="170" height="70" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">About Us </a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Product
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Health Supplements </a>
                    <a class="dropdown-item" href="#">Health & Beauty</a>
                    <a class="dropdown-item" href="#">Tea & Coffee</a>
                    <a class="dropdown-item" href="#">Herbal Products</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link btn " data-toggle="modal" data-target="#myModal" href="#">Login</a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
        <!--NavBar------------------------------------------------------------->
        
        <!--------------------popup menu--------------------------------------->
<!--        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">-->

              <!-- Modal content-->
              <div class="container container-fluid">
                    <jsp:include page="Example.jsp?action=<%=action%>"/>
                    <div class="modal-footer">
                        <a href="Home.jsp"><button type="button" class="btn btn-default">Close</button></a>
                    </div>
              </div>

<!--            </div>
          </div>-->
        <!--------------------popup menu--------------------------------------->
        
        
        <!--------------------Picture List------------------------------------->            
<!--        <div class="container" style="margin-top: 15px; margin-left: 17%; margin-right: 7%">
            <% int i; %>
            <% i = 0; for(Object[] x: data){ %>
                <% if(i==0){%><div class="row"><%}%>
                    <div class="col-md-4" >
                        <div class="card mb-4 box-shadow" style="width: 17rem; height: 33rem;">
                            <img class="card-img-top" src="Photos/<%=x[3]%>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><%=x[1]%></h5>
                                <p class="card-text">Price: Rs. <%=x[2]%></p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <a href="ProductDetail.jsp?id=<%=x[0]%>" class="btn btn-sm btn-outline-secondary">View</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <% i++; if(i==3){ i=0;%> </div> <%}%>                
            <%}%>
            <% if(i!=3){%> </div> <% } %>
        </div>-->
        <!--------------------Picture List------------------------------------->
        
        
        <!--------------------Footer------------------------------------------->
        <footer id="myFooter" class="navbar-dark bg-dark" style="margin-top: 15px">
            <div class="container" style="background-color: #343A40">
                <div class="row">
                    <div class="col-sm-3" style="padding-top: 20px;">
                        <a href="#"> 
                            <img src="Photos/Logo/bigLogoWhite.png" width="170" height="70">
                        </a>
                    </div>
                    <div class="col-sm-2 bg-dark">
                        <h5>Get started</h5>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Sign up</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>About us</h5>
                        <ul>
                            <li><a href="#">Company Information</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>Products</h5>
                        <ul>
                            <li><a href="#">Health Supplements</a></li>
                            <li><a href="#">Health & Beauty</a></li>
                            <li><a href="#">Tea & Coffee</a></li>
                            <li><a href="#">Herbal Products</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <div class="social-networks">
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                        </div>
                        <button type="button" class="btn btn-default">Contact us</button>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <p>© 2019 Copyright Text </p>
            </div>
        </footer>
        <!--------------------Footer------------------------------------------->
        
        

    </body>
</html>
