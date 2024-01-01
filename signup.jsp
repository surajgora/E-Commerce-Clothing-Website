<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login.css">
<title>Signup</title>
</head>
<script>  
function verifyPassword() {  
  var pw = document.getElementById("pswd").value;  
  //check empty password field  
  if(pw == "") {  
     document.getElementById("message").innerHTML = "**Fill the password please!";  
     return false;  
  }  
   
 //minimum password length validation  
  if(pw.length < 8) {  
     document.getElementById("message").innerHTML = "**Password length must be atleast 8 characters";  
     return false;  
  }  
  
//maximum length of password validation  
  if(pw.length > 15) {  
     document.getElementById("message").innerHTML = "**Password length must not exceed 15 characters";  
     return false;  
  }  
  }  
}  
</script> 
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post" onsubmit ="return verifyPassword()">
    <input type="text" name="name" placeholder="Enter your Name" required>
    <input type="email" name="email" placeholder="Enter your Email" required>
    <input type="number" name="mobilenumber" placeholder="Enter your mobile number" required>
    <select name="securityQuestion" required>
    <option value="In what city were you born?">In what city were you born?</option>
    <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
    <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
    <option value="What high school did you attend?">What high school did you attend?</option>
    </select>
    <input type="text" name="answer" placeholder="Enter your Answer " required>
    <input type="password" name="password" id = "pswd" value = ""  placeholder="Enter your password" required>
    <span id = "message" style="color:red"> </span>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg =request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered :) </h1>
<%}%>
<%
if("invalid".equals(msg))
{
%>
    <h1 >Some thing Went Wrong! Try Again :( </h1>
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