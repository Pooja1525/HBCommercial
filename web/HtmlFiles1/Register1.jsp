<!DOCTYPE html>

<html>
<head>
	<title>Welcome</title>
        <link rel="stylesheet" href="../CSS/navbarp.css">
        <link rel="stylesheet" href="../CSS/itemlistp.css">
        <link rel="stylesheet" href="../CSS/searchp.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="../CSS/Footer-with-button-logo.css" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="navbar">
        <a href="Home.html"><i class="fa fa-fw fa-home"></i> Home</a> 
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
    <div class="container-fluid rounded border" style="width: 50%; margin-top: 20px; padding: 20px; background-color: #FAFBFB" >
    <table>
        <h3 align='center'>Register Account</h3>
        <form method ='post' name="theForm">
                        <tr>
                                <td>First Name:</td>
                                <td><input type='text' class="form-text" name='fname' size=15 maxlength="25"></td>
                                <td>Last Name:</td>
                                        <td><input type='text' name='lname' size=15 maxlength="25"></td>
                        </tr>
                        <tr>
                                <td>Gender:</td>
                                <td><input type='radio' name='gender' value="female" checked="">Female</td>
                                <td><input type='radio' name='gender' value="male">Male</td>
                        </tr>
                        <tr>
                                <td>Address:</td>
                                <td><input type='text' name='add' size=15 maxlength="25"></td>
                        </tr>
                        <tr>
                                <td>Contact no.:</td>
                                <td><input type='number' name='Contact' size=15 maxlength="25"></td>
                        </tr>
                        <tr>
                                <td>Username:</td>
                                <td><input type='text' name='user' size="5" maxlength="7"></td>
                        </tr>
                        <tr>
                                <td>Email:</td>
                                <td><input type='text' name='email' size=15 maxlength="25"></td>
                        </tr>
                        <tr>
                                <td>Password:</td>
                                <td><input type='Password' name='p1' placeholder="Enter Password" size=10 maxlength="10"></td>
                                <td> Confirm Password:</td>
                                <td><input type='Password' name='p2' placeholder="Re-enter Password" size=15 maxlength="25"></td>
                        </tr>
                        <tr>
                                <td colspan="2"><input type="checkbox"  name="remember"> Remember me</td>
                        </tr>
                        <tr>
                                <td colspan="2"><p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p></td>
                        </tr>
                        <tr>
                                <td><input type="reset" name="abort" value="Abort"></td><td><input type="Submit" name="Submit" value="SignUp"></td>
                        </tr>
        </form>
   </table>	
    </div>
</body>
</html>
