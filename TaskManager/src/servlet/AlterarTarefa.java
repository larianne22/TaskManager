package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tarefas;
import service.TarefasService;

/**
 * Servlet implementation class ExcluirTarefa
 */
@WebServlet(name = "AlterarTarefa.do", urlPatterns = { "/AlterarTarefa.do" })
public class AlterarTarefa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlterarTarefa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Captura de parametros: (a id a ser excluida do banco de dados.		
		
		int id = Integer.parseInt(request.getParameter("id_tarefa"));
		String titulo = (request.getParameter("titulo"));
		String descricao = (request.getParameter("descricao"));
		
		//Instanciar objeto tipo noticia:
		
		Tarefas tarefas = new Tarefas();
		
		tarefas.setTitulo(titulo);
		tarefas.setDescricao(descricao);
		tarefas.setId(id);
		
		
		// enviar o objeto id para a service remover:
		
		TarefasService tarefasService = new TarefasService();
		tarefasService.alterar(tarefas);
		
		PrintWriter saida = response.getWriter();
		response.setContentType ("text/html");
		saida.println("Alteração realizada com sucesso!");
		saida.println(" <a href='home.jsp'> Clique aqui para visualizar as tarefas </a>");
	}


}
