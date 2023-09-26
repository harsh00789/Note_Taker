<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_style.jsp" %>
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp"%>
    
    
    <%
    
   // String title = request.getParameter("title");
  // String content = request.getParameter("content");
    
    String nid = request.getParameter("nid");
    int noteid = Integer.parseInt(nid);
    
    Session s = FactoryProvider.getfactory().openSession();
    s.beginTransaction();
   
    
    Note n = s.get(Note.class,noteid);
  
    
    
   
   
    
    
    
    %>
    
  
<h2>Edit your note detail</h2>
<br>
<form action="UpdateServlet" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input type="text" class="form-control" value="<%=n.getTitle() %>" name="title" required aria-describedby="emailHelp" placeholder="Enter here">
  <!--   <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Add Content</label>
    <textarea required type="text" style="height: 250px"  class="form-control" name="content" placeholder="Enter here...."><%=n.getContent() %></textarea>
  </div>
<!--   <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div> -->
  <input type="hidden" name="nid" value=<%=nid %>>
  <button type="submit"  class="btn btn-primary">Submit</button>
</form>

<%s.close(); %>

</div>
</body>
</html>