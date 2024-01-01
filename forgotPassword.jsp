<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter your eemail" required="required">
     <input type="number" name="mobilenumber" placeholder="Enter your mobile number" required>
    <select name="securityQuestion" required>
    <option value="In what city were you born?">In what city were you born?</option>
    <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
    <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
    <option value="What high school did you attend?">What high school did you attend?</option>
    </select>
     <input type="text" name="answer" placeholder="Enter your Answer " required>
    <input type="password" name="newPassword" placeholder="Enter your New password to set" required>
    <input type="submit" value="Save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
<%
String msg =request.getParameter("msg");
if("done".equals(msg))
{
%>
<h1>Password Changed Successfully!</h1>
<%}%>
<%
if("invalid".equals(msg))
{
%>
    <h1>Some thing Went Wrong! Try Again !</h1>
<%
}
%>	   
<h2 class="headLin">FASHIONLYTIC #WEAR_IT..</h2>
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