<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="all_style.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <div class="container">
    <%@include file="navbar.jsp"%>
  
<h2>Please fill your note detail</h2>
<br>
<form action="SaveServletn" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input type="text" class="form-control" name="title" required aria-describedby="emailHelp" placeholder="Enter here">
  <!--   <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Add Content</label>
    <textarea required type="text" style="height: 250px"  class="form-control" name="content" placeholder="Enter here...."></textarea>
  </div>
<!--   <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div> -->
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</body>
</html>