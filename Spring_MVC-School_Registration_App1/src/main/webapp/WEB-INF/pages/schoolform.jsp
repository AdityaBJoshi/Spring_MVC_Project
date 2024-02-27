<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>School_Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/add-customer-style.css" />
</head>
<body style="text-align: center;padding: 1in 2in;margin-left: 3in">


<div id="wrapper">
		<div id="header">
			<h3>Student Information Form</h3><br><br>
		</div>
	</div>
	
	<div style="margin-top: 1in;margin-left: 1in" id="container">
		
		<form:form action="saveStudent" method="post" modelAttribute="reg">
			
			<!-- need to associate this data with customer id -->
			<form:hidden path="sid"/>
		
			<table>
				<tbody>
					<tr>
						<td>
							Name
						</td>
						<td>
							<form:input path="sname"/>
						</td>
						
					</tr>
					
					<tr>
						<td>
							Class
						</td>
						<td>
							<form:input path="sclass"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Div
						</td>
						<td>
							<form:input path="sdiv"/>
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
							<input style="margin-left: 0.5in" type='submit' value='save' class='save'/>
						</td>
					</tr>
				
				</tbody>
			</table>	
		</form:form>
	</div>
	
	<div style='clear;both;margin-top: 1in;margin-right: 2in'>
		<p>
			<a href='${pageContext.request.contextPath}/school/list'>Back to List</a>
		</p>
</html>