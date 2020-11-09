<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightgreen;">
	<!-- write html code to read the application number and send to usercontrollers'
             displaystatus method for displaying the information
	-->
	
	<jsp:include page="header.jsp"/>
	<div align="right"><a href="userhome.jsp">Back</a></div>
	<form action="user?action=trackloan" method="POST">
	         <div>
				<label>Loan Application Number:</label>
				<input type="text" name="applicationnumber" required/>
			</div>
			<div>
				<button>Submit</button>
			</div>
	
	</form>
	
	<jsp:include page="footer.jsp"/>
	

</body>
</html>