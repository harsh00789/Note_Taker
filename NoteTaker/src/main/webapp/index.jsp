<!doctype html>
<html lang="en">
  <head>
 
 <%@include file="all_style.jsp" %>

    <title>Hello, world!</title>
  </head>
  <body>
  
  <div class="container">
    
   <%@include file="navbar.jsp" %>
   
   <br>
   <div class="card">
    <img class="img-fluid mx-auto" style="max-width:400px" src="img/notebook.png">
    <h class="text-uppercase text-primary text-center mt-3">Start Taking your notes</h1>
    <div class="container text-center">
    <form action="add_notes.jsp">
    <button type="submit" class="btn btn-success mt-3" href="add_notes.jsp">Start here</button></form>
    </div>
    </div>
   
    </div>
    
    

   </body>
</html>