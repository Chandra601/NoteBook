<!doctype html>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
  	<%@ include file="all_js_css_file.jsp" %>
    <title>Update Page</title>
    
  </head>
  <body>
    
    <div class="container-fluid p-0 m-0">
    	<%@ include file="navbar.jsp" %>
    	<h1 class="text-center bg-light">Update the Details</h1>
    	<hr>
    	<%
    		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    		Session s = FactoryProvider.getFactory().openSession();
    		Note note =(Note) s.get(Note.class,noteId);
    	
    	%>
   		 <form action="UpdateServlet" method="post">
   		 	<input type="hidden" value="<%=note.getId()%>" name="noteId" />
			  <div class="mb-3">
			    <label for="title" class="form-label">Note Title</label>
			    <input type="text" class="form-control" id="title" name="title" value="<%=note.getTitle()%>"
			    aria-describedby="emailHelp" required>
			  </div>
			  
			  <div class="mb-3">
			    <label for="content" class="form-label">Note Content</label>
			    <textarea required id="content" name="content"  class="form-control" style="height:300px"><%=note.getContent()%></textarea>
			  </div>
			
			  <div class="container text-center">
			  	<button type="submit" class="btn btn-primary">Update</button>
			  </div>
		</form>
    </div>
    
    
  </body>
</html>