 

<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.lang.*" %>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
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
    
   <%@include file="navbar.jsp" %>
   
    
    <h1>All Notes : </h1><br>
    
       <%
    //fatching data from database

    Session s = FactoryProvider.getfactory().openSession();
    s.beginTransaction();
   Query q = s.createQuery("from Note");
    List<Note> list = q.list();
    for(Note n : list){
    	%>
    	
    	
   
    
    <div class="row">
    <div class="col-12">
    
    <div class="card " style="width: 70rem;margin-top: 15px">
  <img class="card-img-top m-4" style="max-width:100px" src="img/notebook.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=n.getTitle() %></h5>
    <p class="card-text"><%=n.getContent()%></p>
    <p class="card-text"><%=n.getAddedDate()%></p>
<a href="DeleteServlet?nid=<%=n.getId() %>"class="btn btn-danger">delete</a>
<a href="edit.jsp?nid=<%=n.getId() %>" class="btn btn-primary">update</a>
  </div>
</div>
    
    
    </div></div>
    <%} %>
    
 
 </div>

</body>
</html>