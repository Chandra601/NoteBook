<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
  	<%@ include file="all_js_css_file.jsp" %>
    <title>All Notes</title>
    
  </head>
  <body>
    
    <div class="container-fluid p-0 m-0">
    	<%@ include file="navbar.jsp" %>
    	<h1 class="text-center bg-light">All Notes</h1>
    	
    	<div class="row">
    		<div class="col-12">
    		<%
    	
    	Session s = FactoryProvider.getFactory().openSession();
    	Query q = s.createQuery("from Note");
    	List<Note> list = q.list();
 		for(Note note:list)
 		{
 			%>
 			<div class="card mt-3 col-6 offset-3" style="width: 50rem;">
				 <!--  <img src="..." class="card-img-top" alt="..."> -->
				  <div class="card-body">
				  	<h5 class="card-title"><%=note.getTitle() %></h5>
				    <p class="card-text"><%= note.getContent()%></p>
				    <p class="card-text text-warning"><%= note.getAddedDate()%></p>
				  	<div class="container">
				  		<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
				  		<a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
				  	</div>
				  </div>
			</div>
 			
 			<%
 			}
    	s.close();
    	%>
    		</div>
    	</div>
    	
    	
    </div>
    
    
  </body>
</html>