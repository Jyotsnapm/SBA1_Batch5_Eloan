<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.iiht.evaluation.eloan.dto.UserInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user home</title>
</head>
<body style="background-color:lightgreen;">
<jsp:include page="header.jsp"/>
<%
	UserInfo userDetails = (UserInfo) session.getAttribute("userInfo");
%>
`							
<h4>User Dash Board</h4>
<h1>Welcome <%=userDetails.getFirstName()%></h1>
<div align="right"><a href="index.jsp">Logout</a></div>
<a href="user?action=application&state=new">Apply for Loan</a><br>
<a href="trackloan.jsp">Track Loan Application</a><br>
<a href="editloan.jsp">Edit Loan Application</a>
<jsp:include page="footer.jsp"/>
</body>
</html>