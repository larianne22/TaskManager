<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="service.TarefasService" %>
    <%@ page import="model.Login" %>
    <%@ page import="java.util.ArrayList, model.Tarefas" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/glyphicon.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>

<style type="text/css">
    * {    
    margin: 10px;
    }    
  </style>
  
<title>TasksManager</title>
</head>
	<%
		Login login = (Login)session.getAttribute("usuario");				
	%>
<body>
	
	
		<h1>TasksManager</h1>
	
	
				
			<div>
				<div class="row float-right">
					<a>Olá <%=login.getNome()%>!</a>
					<a href='Logoff.do' class="float-right"> Sair </a>					
				</div>
				</br>
				<h4>Lista de tarefas de: <%=login.getEmail() %></h4>
			
			<form method = "post" action = "incluir.jsp" >
				<input  type="submit" class="btn btn-outline-primary float-right" value = "Add tarefa"> </input>
			</form>	
				
			</div>
			<br/>
			
				
			
				
			
			<%
			Tarefas tarefas = new Tarefas();
			tarefas.setFk_usuario_email(login.getEmail());
			
			ArrayList<Tarefas> lista;
			TarefasService ts = new TarefasService();
			lista = ts.listarTarefas();
				
			for (Tarefas p : lista){
				
			%>
			
			<div class="container">
				<form id="form_<%=p.getId()%>" method="post" action='AlterarTarefa.do?id_tarefa=<%=p.getId()%>'>
					
					<table  class="table col-md-4" border='1'>
					 
						<tr>				
							<td>
								<input type='text' size="25" name='titulo' value= ' <%= p.getTitulo()%> '> <br>
															
										<a onclick="document.getElementById('form_<%=p.getId()%>').submit();" href="#"> <span class="glyphicon glyphicon-pencil"></span></a>
							 			<a href='ExcluirTarefa.do?id_tarefa=<%=p.getId()%>'><span class="glyphicon glyphicon-trash"></span></a>
							 	</input>								 											
							</td>
							
						</tr>
						<tr>				
							<td>
								<textarea class="form-control" rows="3" name='descricao'><%= p.getDescricao()%> </textarea> <br>
							</td>
						</tr>			
					</table>
				</form>	
			</div>
			<br/>
			<% } %>

	
				
</body>
</html>