<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>School_List</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>

<body style="text-align: center;margin-left:3in;">


<div id="wrapper" style="text-align:center;">
	<div id="header">
	<h2>School-Registration Project</h2>
	</div>
</div>
 
	<div id="container" style="text-align:center">
		<div id="content">
		
		<input type="button" style="margin-right: 8cm" value="Add Student" onclick="window.location.href='showform';return false" class="add-button"><br>
			<table>
			<tr>
				<th>Name</th>
				<th>Class</th>
				<th>Div</th>
				<th>Action</th>
			</tr>
			
			<c:forEach var="schl" items="${schList}">
			
				<c:url var="updateform" value="/school/showformupdate">
					<c:param name="sid" value="${schl.sid }"/>
					
					</c:url>
					
					<c:url var="deleteform" value="/school/deleteStudent">
					<c:param name="sid" value="${schl.sid }"/>
					
					</c:url>
			
			<tr>
				<td>${schl.sname }</td>
				<td>${schl.sclass }</td>
				<td>${schl.sdiv }</td>
				<td>
				<a href="${updateform }">Update</a>| 
				<a href="${deleteform }"
				onclick="if(!(confirm('Do You Really Want To Delete?')))return false">Delete</a> </td>
		</tr>
			</c:forEach>
			
			</table>
		</div>
	</div>

</body>
</html>