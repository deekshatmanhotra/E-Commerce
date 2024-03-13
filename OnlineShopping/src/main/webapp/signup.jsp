<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signupNew.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type = "text" name="name" placeholder="Enter Name" required>
    <input type = "email" name="email" placeholder="Enter Email" required>
    <input type = "number" name="mnumber" placeholder="Enter Mobile Number" required>
	<select name="securityQuestion" required>
	<option value="What was your first car?">What was your first car</option>
	<option value="What is the name of your first pet?">What is the name of your first pet?</option>
	<option value="What was your first job?">What was your first job?</option>		
	</select>
	 <input type = "text" name="answer" placeholder="Enter answer" required>	    
	 <input type = "password" name="password" placeholder="Enter Password" required>
	 <input type="submit" value="signup">	    
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>  
<h1>Successfully Registered</h1>
 <%} %>
 
 <%
 if("invalid".equals(msg)){
 %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%}%>
    <h2>BestBuy.com</h2>
    <p>Welcome to <b>BestBuy.com</b>, your one-stop destination for all things fabulous! Dive into a world of fashion, beauty, home decor, and more, curated just for you.

Discover the latest trends and timeless classics in clothing, accessories, and lifestyle products, all at your fingertips. Whether you're searching for the perfect outfit, a unique gift, or simply indulging in a little self-care, we've got you covered.</p>
  </div>
</div>

</body>
</html>