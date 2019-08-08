<%@page import="Database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    Object[] data;
    int id;
%>
<%
    id = Integer.parseInt(request.getParameter("id"));
    Database d = new Database();
    data = d.productDetail(id);
    String qtyError, locError, numError, passError;
    qtyError = locError = numError = passError = "";
    boolean error=false;
     if("POST".equals(request.getMethod())){ 
          String quantity = request.getParameter("quantity").toString();
          String location = request.getParameter("location").toString();
          String number = request.getParameter("number").toString();
          String password = request.getParameter("password").toString();
          System.out.println(quantity+" "+location+" "+number+" "+password);
          if(quantity.equals("")){
                qtyError = "Please enter no. of quantity to order";
                error = true;
          }
          if(location.equals("")){
                locError = "Please enter location for delivery";
                error = true;
          }
          if(number.equals("")){
                numError = "Please enter your number";
                error = true;
          }
          if(password.equals("")){
                passError = "Please enter password to continue";
                error = true;
          }
          if(!error){
              
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
        <style>
            #form{
                display: none;
            }
            #hide{
                display: none;
            }
        </style>
        <script>
                function orderClick(){
                    <% System.out.println("orderClicked");%>
                    document.getElementById("form").style.display = "block";
                    document.getElementById("hide").style.display = "block";
                    document.getElementById("order").style.display = "none";
                }
                function hideClick(){
                    document.getElementById("form").style.display = "none";
                    document.getElementById("hide").style.display = "none";
                    document.getElementById("order").style.display = "block";
                }
        </script>
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
                  <a class="nav-link" href="Login.jsp">Login</a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
        <!--NavBar------------------------------------------------------------->
          
        <div class="container">
            <div class="card flex-md-row mb-4 box-shadow h-md-250">
                <div class="card-body d-flex flex-column align-items-start">
                  <strong class="d-inline-block mb-2 text-primary"><%=data[0]%></strong>
                  <div class="mb-1 text-muted">Rs. <%=data[1]%></div>
                  <p class="card-text mb-auto"><%=data[2]%></p>
                  <a href="#" class="btn btn-sm btn-outline-secondary" onclick="orderClick()" id="order">Order</a>
                  <a href="#" class="btn btn-sm btn-outline-secondary" onclick="hideClick()" id="hide">Hide</a>
                  <form id="form" method="post" action="ProductDetail.jsp?id=<%= id %>">
                    <div class="form-group">
                        <label for="quantity">Quantity <%if(!qtyError.equals("")){%><font id="error"><%=qtyError%></font><%}%></label>
                      <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Quantity to purchase">
                    </div>
                    <div class="form-group">
                      <label for="quantity">Location  <%if(!locError.equals("")){%><font id="error"><%=locError%></font><%}%></label>
                      <input type="text" class="form-control" id="location" name="location"  placeholder="Location to deliver">
                    </div>
                    <div class="form-group">
                      <label for="quantity">Number  <%if(!numError.equals("")){%><font id="error"><%=numError%></font><%}%></label>
                      <input type="number" class="form-control" id="number" name="number"  placeholder="Enter your contact number">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password <%if(!passError.equals("")){%><font id="error"><%=passError%></font><%}%></label>
                      <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                    </div>
                      <input type="submit" class="btn btn-primary" name="submit" value="Submit">
                  </form>
                </div>
                  <img class="card-img-right flex-auto d-none d-md-block" src="Photos/<%=data[3]%>" alt="Card image cap" style="width: 20rem; height: 30rem">
              </div>
        </div>
        
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
    <%
    if("POST".equals(request.getMethod())){ %>
     <script>orderClick();</script>
     <% } %>
</html>
