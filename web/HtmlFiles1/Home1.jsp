<%@page import="java.sql.*"%>
<%!
    ResultSet res;
%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/hb_db";
    Connection con = DriverManager.getConnection(url, "root", "");
    String str = "SELECT * FROM Product WHERE cat_id=3";
    if (con!=null){
        Statement stmt = con.createStatement();
        res = stmt.executeQuery(str);
    }
%>







<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../CSS/navbarp.css">
        <link rel="stylesheet" href="../CSS/imagesList.css">
        <link rel="stylesheet" href="../CSS/itemlistp.css">
        <link rel="stylesheet" href="../CSS/searchp.css">
        <link rel="stylesheet" href="../CSS/footbarp.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
        
    <body>
        <div class="header">
            <div class="logo">
                <img src="../Photos/Logo/bigLogoGreen.png">
            </div>
            <div class="navbar">
              <a class="active" href="#"><i class="fa fa-fw fa-home"></i> Home</a> 
              <a href="AboutUs.html"><i class="fa fa-fw fa-search"></i> About us</a> 
              <div class="pro-item">
                    <button class="probtn">Product 
                      <i class="fa fa-caret-down"></i>
                    </button>
                    <div class="item-list">
                      <a href="#">Health Supplements</a>
                      <a href="#">Health & Beauty</a>
                      <a href="#">Tea & Coffee</a>
                      <a href="#">Herbal Product</a>
                    </div>
                </div>
              <a href="Login1.html"><i class="fa fa-fw fa-user"></i> Login</a>
            </div>
        </div>
        <div class="search-container">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </div>
        <div class="display-items">
            <% while(res.next()){ %>
            <img src="../Photos/<%= res.getString(6) %>">
            <%}%>
        </div>
        <div class="footer">
            <div class="footer-menu">
                <ul>
                    <li>Home</li>
                    <li>About Us</li>
                    <li>Product
                        <ul>
                            <li>Health Supplements</li>
                            <li>Health & Beauty</li>
                            <li>Tea & Coffee</li>
                            <li>Herbal Product</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="copyright">Copyright &copy;poo.com</div>
        </div>

    </body>
</html> 
