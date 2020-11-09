<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Approval Status</title>
</head>
<body style="background-color:lightgreen;">
 <jsp:include page="header.jsp" />
  <%
  
  String dataInsertFlag = session.getAttribute("dataInsertFlag").toString();
  String statusUpateFlag = session.getAttribute("statusUpateFlag").toString();
  
  
  
  if(dataInsertFlag.equals("true")) { 
  
  if(statusUpateFlag.equals("true")) {
  
  %>
  
  <h1>Loan Approved successfully !!</h1>
  
  	<% } else { %>
  		
  		<h1>Loan Approved Unsuccessfully !!</h1>
  <%	}
  
  
  } else if(dataInsertFlag.equals("false")) { %>
	
	<h1>Loan Approved Unsuccessfully !!</h1>

	<% } else {%>
 	
 	<h1>Loan Declined successfully !!</h1>
	

	<% } %>
	
	
	<a href="adminhome1.jsp"><input type="button" name="home" value="Admin Home"></a>
	<jsp:include page="footer.jsp" />

</body>
</html>