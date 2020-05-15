<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="service.TarefasService" %>
    <%@ page import="model.Login" %>
    <%@ page import="java.util.ArrayList, model.Tarefas" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/glyphicon.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<style type="text/css">
    * {    
    margin: 10px;
    }    
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }

</style>
<title>Insert title here</title>
</head>
<body>

		<form method ="post" class="form-signin" action = "ConectarLogin.do" >
		
		
   
    		<h1 class="h3 mb-3 font-weight-normal">Conectar Login</h1>    
  		    <%
  		    	if (request.getAttribute("mensagem")!=null){
  		    		out.println(request.getAttribute("mensagem"));
  		    	}  		    	
  		    %>
  			<div class="col-md-3">	
					Email  <input type = "email" class="form-control" name = "email"> 
					
				 
					Senha <input type ="password" class="form-control" name = "senha">
				 	
				 	</br>
				 				
					<input type = "submit" class="btn btn-outline-primary" value = "Conectar">
					
					
			</div>		

			  
			  
		</form>
</body>
</html>
