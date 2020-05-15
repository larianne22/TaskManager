<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.Login" %>    
    <%@ page import="service.TarefasService" %>
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
	<%
		Login login = (Login)session.getAttribute("usuario");				
	%>
	
<body>
		<form method = "post" action = "IncluirTarefa.do" >
		
			<h1 class="h3 mb-3 font-weight-normal">Inserir uma tarefa</h1>    
		
			<div class="col-md-3">	
				Título <input type = "text" class="form-control" name = "titulo">
				Descrição <textarea type = "text" class="form-control" name = "descricao">	</textarea>	
				email	<input type = "text" class="form-control" name = "email" value ="<%=login.getEmail() %>" > 
				</br>
				<input type = "submit" class="btn btn-outline-primary" value = "Inserir Tarefa">
			</div>
		</form>	
</body>
</html>