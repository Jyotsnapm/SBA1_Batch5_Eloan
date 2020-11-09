<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/viewDetails.js"></script>
<title>User Registration Page</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1 id="welcomeText" align="center">eLoan Login</h1>
	<div class="tab" align="center"> 
		<input type="button" class="tablinks" value="User" onclick="viewInfo(event, 'User')" id="defaultOpen" >
		<input type="button" class="tablinks" value="Admin" onclick="viewInfo(event, 'Admin')">
		</div>
	
	<div id="User" class="tabcontent" align="center">
		<form class="userLoginform" action="user?action=validate&type=user" method="post">
			<div>
				<div><label for="loginid">Enter Login ID</label> </div>
				<div><input type="text" id="loginid" name="loginID"> </div>
			</div>
			<div>
				<div><label for="password">Enter Password</label> </div>
				<div><input type="password" id="password" name="password"> </div>
			</div>
			<div>
				<div><input type="submit" value="Login" id="login"></div>
			</div>
			<br/>
			<a href="user?action=registeruser" id="register">New User? Register here</a>
			<br/><br/>
		</form>
	</div>

	<div id="Admin" class="tabcontent" align="center">
		<form class="adminLoginform" action="user?action=validate&type=admin" method="post">	
			<div>
				<div><label for="adminID">Enter Admin ID</label> </div>
				<div><input type="text" id="adminID" name="adminID"> </div>
			</div>
			<div>
				<div><label for="password">Enter Admin Password</label> </div>
				<div><input type="password" id="password" name="password"> </div>
			</div>
			<div>
				<div><input type="submit" value="Login" id="login"> </div>
			</div>
			<br/>
		<br/>
		</form>
	</div>
	<script>document.getElementById("defaultOpen").click();</script>
<hr/>
<jsp:include page="footer.jsp"/>
</body>
</html>