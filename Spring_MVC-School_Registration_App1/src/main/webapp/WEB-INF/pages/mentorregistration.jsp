<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<body>
<h4 style="margin-left: 50px;margin-top: 50px"><a href="../index.jsp">Back</a></h4>
<form action="signup" method="post">
<div style="margin: 0.5in 4in">
<h1>Sign Up</h1><br>
<div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" name="mname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="memail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="mpassword" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Address</label>
    <input type="text" name="maddress" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Address">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Mobile Number</label>
    <input type="number" name="mmobileno" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Mobile Number">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
</body>
</html>