<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration</title>
</head>
<body style="background-color:lightgreen;">
<jsp:include page="header.jsp"/>
	<!-- read user name and password from user to create account
	     and send to usercontrollers registeruser method
	     
	-->
	<% if(request.getAttribute("newUser")!=null) {%>
		<form action="user?action=registernewuser" method="post">
		<!--<div align="center">-->
		
		    <h2>Create User Account</h2>
			<div>
				<div><label for="firstname">First Name</label> </div>
				<div><input type="text" id="firstname" name="firstname" required> </div>
			</div>
			<div>
				<div><label for="lastname">Last Name</label> </div>
				<div><input type="text" id="lastname" name="lastname" required> </div>
			</div>
			<div>
				<div><label for="dob">Date of Birth</label> </div>
				<div><input type="date" placeholder="yyyy-mm-dd" id="dob" name="dob" required> </div>
			</div>
			<div>
				<div><label for="mobile">Mobile</label> </div>
				<div><input type="tel" id="mobile" name="mobile" pattern="[1-9]{1}[0-9]{9}" required> </div>
			</div>
			<div>
				<div><label for="email">Email</label> </div>
				<div><input type="email" id="email" name="email" required> </div>
			</div>
			<div>
				<div><label for="city">City</label> </div>
				<div><input type="text" id="city" name="city" required> </div>
			</div>
			<div>
				<div><label for="state">State</label> </div>
				<div><input type="text" id="state" name="state" required> </div>
			</div>
			<div>
				<div><label for="country">Country</label> </div>
				<div><input type="text" id="country" name="country" required> </div>
			</div>
			<div>
				<div><label for="pincode">Pincode</label> </div>
				<div><input type="text" id="pincode" name="pincode" required> </div>
			</div>
			<div>
				<div><label for="address">Address</label> </div>
				<div><TextArea id="address" name="address" required></TextArea> </div>
			</div>
			<br>
			<br>
			
			<div>
				<div><label for="password">Choose Password</label> </div>
				<div><input type="password" id="password" name="password" required> </div>
			</div>
			<div>
				<div><input type="submit" value="Register" id="register"></div>
			</div>
			<br/>
		
		</form>
		
		<%} else 
		{ 
		if(request.getAttribute("userCreation").toString().equals("success")) 
		{
		%>
			<h1>User Account Created Successfully.</h1>
			<br>
			<h3>User Login Details:</h3>
			<h4>UserName : <%=request.getAttribute("newUserName") %></h4>
			<h4>Password : <%=request.getAttribute("newPassword") %></h4>
			
		<% } 
		else 
		{ %>
		<h1>User Account Creation is Unsuccessful !!</h1>
		<%} %>
		
		<%} %>
		
		<div align="center"><a href="index.jsp"><input type="button" value="Home" name="home"/></a></div>
		<jsp:include page="footer.jsp"/>
</body>
</html>