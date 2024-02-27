<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body style="text-align: center;">
<form action="school/login" method="post">
<div style="margin: 2in 4in">
<h1>Login</h1><br>
<%
if(request.getParameter("iserror")!=null)
{
	
    String iserror = request.getParameter("iserror");

	if(iserror.equals("1"))
	{
%>
<h5 style="color: red;">Invalid Credentials !</h5>
<%
	}
}
%>





  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="memail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="mpassword" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>

<h4>New User? <a href="/school/newuser">Sign Up</a></h4>

</body>
</html>