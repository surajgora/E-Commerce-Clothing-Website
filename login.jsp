<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" meth īod="post">
     <input type="email" name="email" placeholder="Enter your Email" required="required">
     <input type="password" name="password" placeholder="Enter your password" required="required">
     
     <input type="submit" value="Login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
<%
String msg =request.getParameter("msg");
if("notexist".equals(msg))
{
%>
 <h1 class="login-erroe-mes">Incorrect Username or Password :( </h1>
<%
}
%> 

<%
if("invalid".equals(msg))
{
%>
    <h1 class="login-erroe-mes">Some thing Went Wrong! Try Again :( </h1>
<%
}
%>
    <h2>FASHIONLYTIC #WEAR_IT..</h2>
    <div>
     <div class="b1">
     <img alt="" src="f1.png">
     <div class=b1-1>
         <p><b>Free Shipping</b></p>     
     </div>
      </div>
       <div class="b2">
     <div class=b2-1>
         <p><b>Online Order</b></p>     
     </div>
      </div>
       <div class="b3">
     <div class=b3-1>
         <p><b>Save Money</b></p>     
     </div>
      </div>
       <div class="b4">
     <div class=b4-1>
         <p><b>Promotion</b></p>     
     </div>
      </div>
       <div class="b5">
     <div class=b5-1>
         <p><b>Happy Sell</b></p>     
     </div>
      </div>
       <div class="b6">
     <div class=b6-1>
         <p><b>24/7 Support</b></p>     
     </div>
      </div>
    </div> 
     </div>
    </div>

</body>
</html>